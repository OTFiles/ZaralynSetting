# ZaralynSettings

## 概述

ZaralynSettings 是一个基于某学习平板的家长管理APP的SQL注入漏洞提供软件安装限制开关设置的软件。

## 免责声明
本软件仅用于学习交流，禁止用于非法用途。在使用本软件的时候请确认你拥有对设备的所有权，如果在使用软件的过程中出现任何问题，本人不负任何责任。

## 使用方式
从Releases下载本软件的任意版本，在学习平板安装后可以解除安装限制，设置黑白名单。

注意：其它功能皆为测试内容，大部分不可用。

## 相关技术细节
可访问本人的 (博客)[https://OTFiles.github.io] 查看

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

- Android 5.0 (API 21) ~ Android 14 (API 34)，**含老机型 Android 7.0/7.1（API 24/25）**
- 无需 root；需设备已安装「家长管理」（com.readboy.parentmanager）
- 无 native 库，任何 ABI 均可安装；已开启 Java 8+ API 脱糖，老系统不会因默认方法报 `NoSuchMethodError`

## 老机型适配（v1.1）

- **日志目录多级回退**：外部私有目录不可写时回退内部私有目录，且真实校验可写性
- **launcher 图标**：5 档 PNG mipmap（含圆形版）+ API 26+ 自适应图标，老 Launcher 不再白图标
- **启动日志**记录运行环境（Android 版本 / API / ABI / 机型 / 应用版本），便于老机型反馈排查
- **兼容性自检**（设置页 →「开始自检」）：系统版本、家长管理是否安装与版本、Provider authority 解析、
  安装管控状态读取、家长密码读取、云端接口连通、日志目录可写、剩余存储、存储权限，可一键复制报告
- 移除了 manifest 中 4 个指向不存在类的 `<service>` 声明（部分老 ROM 安装/启动时会校验）

## 使用方式（简述）

1. 从 Releases 下载 APK 安装
2. 首次启动若功能异常，先到「设置」页点「开始自检」，把报告反馈
3. 关闭「全局安装开关」即可解除安装限制；黑白名单在对应页维护
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

(MIT许可证)[LICENSE]

## 联系方式

- GitHub: https://github.com/OTFiles/
- Issues: https://github.com/OTFiles/ZaralynSetting/issues
