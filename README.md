# ZaralynSettings

## 概述

ZaralynSettings 是一个基于某学习平板的家长管理APP的SQL注入漏洞提供软件安装限制开关设置的软件。

## 免责声明
本软件仅用于学习交流，禁止用于非法用途。在使用本软件的时候请确认你拥有对设备的所有权，如果在使用软件的过程中出现任何问题，本人不负任何责任。

## 使用方式
从Releases下载本软件的任意版本，在学习平板安装后可以解除安装限制，设置黑白名单。

注意：其它功能皆为测试内容，大部分不可用。

## 相关技术细节
可访问本人的(博客)[https://OTFiles.github.io]查看

## 构建说明

### 使用 GitHub Actions 构建

```bash
# 推送到 GitHub 将自动触发构建
git push origin main
```

### 本地构建

```bash
# 克隆仓库
git clone git@github.com:OTFiles/ZaralynSetting.git
cd ZaralynSetting

# 构建调试版本
./gradlew assembleDebug

# 构建发布版本
./gradlew assembleRelease

# 输出位置: app/build/outputs/apk/
```

## 系统要求

- Android SDK 28+
- Kotlin 1.9.20+
- Gradle 8.3+

## 技术栈

- **UI**: Jetpack Compose + Material Design 3
- **架构**: MVVM + Kotlin Coroutines + Flow
- **构建**: Gradle + Kotlin DSL

## 安全警告

**本应用仅用于安全研究和教育目的，请勿将此应用用于任何非法目的。**

## 许可证

本项目仅供学习研究使用。

## 联系方式

- GitHub: https://github.com/OTFiles/ZaralynSetting
- Issues: https://github.com/OTFiles/ZaralynSetting/issues
