export LANG=en_US.UTF-8
export PATH=$PATH:/usr/local/bin
rm -rf target
mkdir -p target

projectDir="SmartOperationMobile.xcodeproj/project.pbxproj"
configDir="SmartOperationMobile/Services/Target_AppConfig.m"

#xcodebuild clean -UseModernBuildSystem=NO
#mv Podfile.lock Podfile.lock.backup
#pod install

### 开始构建
xcodebuild -UseModernBuildSystem=NO -workspace SmartOperationMobile.xcworkspace -scheme OPS -configuration Release clean
sed -i '' 's/ProvisioningStyle = Automatic;/ProvisioningStyle = Manual;/' ${projectDir}
sed -i '' 's/com.pingan.cityinfo.ops/com.pingan.SmartOperationMobile/g' ${projectDir}
sed -i '' 's/CODE_SIGN_STYLE = Automatic;/CODE_SIGN_STYLE = Manual;/' ${projectDir}
sed -i '' 's/7UG85JH6L5/UH86AS4452/g' ${projectDir}
sed -i '' 's/PROVISIONING_PROFILE_SPECIFIER = ""/PROVISIONING_PROFILE_SPECIFIER = SmartOperationOPS_InHouse/g' ${projectDir}
#sed -i '' 's/PROVISIONING_PROFILE = ""/PROVISIONING_PROFILE = 4c9e63ec-b278-488d-892a-9bfd6ec456c3/g' ${projectDir}
sed -i '' 's/iPhone Developer/iPhone Distribution: Pinganhaofang Co. Ltd./g' ${projectDir}


####################################################
#1：ST环境包 2：AnHouse环境 3.GA环境
####################################################

if [ ${mode} == 'AnHouse' ] 
    then
    sed -i '' "s/PAAPIEnv[a-zA-Z0-9]*/PAAPIEnvAnhouse/g"  ${configDir}
elif [ ${mode} == 'GA' ]
    then
    sed -i '' "s/PAAPIEnv[a-zA-Z0-9]*/PAAPIEnvGA/g"  ${configDir}
else #默认ST环境
    sed -i '' "s/PAAPIEnv[a-zA-Z0-9]*/PAAPIEnvST/g"  ${configDir}
fi
#

security unlock-keychain -p"jenkins"

xcodebuild archive -workspace SmartOperationMobile.xcworkspace -scheme OPS \
-archivePath "build/OPS_${mode}.xcarchive" -configuration Release -sdk iphoneos 

xcrun xcodebuild -exportArchive \
-archivePath "build/OPS_${mode}.xcarchive" -exportPath ${WORKSPACE}/target/ -exportOptionsPlist ./exportPlist.plist


#重命名IPA包显示不同环境
mv  target/OPS.ipa target/OPS_${mode}.ipa 