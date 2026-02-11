# ZaralynSettings

## 概述

ZaralynSettings 是一个 Material Design 3 风格的设置应用，利用 Readboy 学习平板设备的系统漏洞提供高级自定义功能。

## 功能特性

### 系统功能
- **USB 调试控制**: 启用/禁用 USB 调试
- **开发者选项**: 访问完整的开发者设置
- **数据上传**: 控制数据上传功能
- **位置服务**: 启用/禁用 GPS 追踪
- **设备控制**: 重启和关机功能

### 应用管理
- **后台安装**: 自定义 APK 路径并静默安装
- **应用控制**: 暂停/启动指定应用
- **数据清除**: 清除应用数据

### 家长控制
- **模式切换**: 家长模式 / Dream 模式
- **密码管理**: 修改和重置密码
- **权限管理**: 获取应用所有权限

### 高级设置
- **自定义数据**: 自定义服务器地址和上传内容
- **录音功能**: 启动/停止录音
- **系统状态**: 查看实时系统状态

## 漏洞利用说明

本应用利用了以下 Readboy 设备的系统漏洞：

1. **SettingsFactoryDslAppsInstallService** - 无权限验证的后台安装
2. **SettingsBootCompletedReceiver** - 家长模式切换
3. **SyncDataService** - 数据上传
4. **RecordService** - 录音功能
5. **AppContentProvider** - 数据访问

详细漏洞分析请参考：
- [逆向分析报告.md](../../work/pojie/逆向分析报告.md)
- [安全漏洞分析报告.md](../../work/pojie/安全漏洞分析报告.md)
- [无权限保护组件清单.md](../../work/pojie/无权限保护组件清单.md)

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

## 安装说明

1. 将 APK 文件复制到设备
2. 使用 PackageInstaller 安装
3. 授予必要权限

## 使用说明

### 启用 USB 调试
1. 打开应用
2. 进入"系统功能"标签页
3. 启用"USB 调试"开关

### 后台安装应用
1. 进入"应用管理"标签页
2. 输入 APK 文件路径（如：/sdcard/Download/app.apk）
3. 点击"安装自定义 APK"按钮

### 切换家长模式
1. 进入"家长控制"标签页
2. 启用/禁用"家长模式"开关

### 上传自定义数据
1. 进入"高级设置"标签页
2. 输入服务器地址和自定义数据
3. 点击"发送自定义数据"按钮

## 技术栈

- **UI**: Jetpack Compose + Material Design 3
- **架构**: MVVM + Kotlin Coroutines + Flow
- **构建**: Gradle + Kotlin DSL

## 安全警告

**本应用仅用于安全研究和教育目的**。

本应用利用的漏洞包括：
- 79 个无权限保护的系统组件
- 6 个严重安全漏洞
- 6 个高危安全漏洞

**请勿将此应用用于任何非法目的。**

## 许可证

本项目仅供学习研究使用。

## 联系方式

- GitHub: https://github.com/OTFiles/ZaralynSetting
- Issues: https://github.com/OTFiles/ZaralynSetting/issues