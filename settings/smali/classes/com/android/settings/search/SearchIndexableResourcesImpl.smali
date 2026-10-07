.class public Lcom/android/settings/search/SearchIndexableResourcesImpl;
.super Ljava/lang/Object;
.source "SearchIndexableResourcesImpl.java"

# interfaces
.implements Lcom/android/settings/search/SearchIndexableResources;


# instance fields
.field private final sProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/SearchIndexableResourcesImpl;->sProviders:Ljava/util/Set;

    .line 117
    const-class v0, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 118
    const-class v0, Lcom/android/settings/network/NetworkDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 119
    const-class v0, Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 120
    const-class v0, Lcom/android/settings/sim/SimSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 121
    const-class v0, Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 122
    const-class v0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 123
    const-class v0, Lcom/android/settings/display/ScreenZoomSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 124
    const-class v0, Lcom/android/settings/DisplaySettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 125
    const-class v0, Lcom/android/settings/display/AutoBrightnessSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 126
    const-class v0, Lcom/android/settings/display/AmbientDisplaySettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 127
    const-class v0, Lcom/android/settings/wallpaper/WallpaperTypeSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 128
    const-class v0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 129
    const-class v0, Lcom/android/settings/notification/SoundSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 130
    const-class v0, Lcom/android/settings/notification/ZenModeSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 131
    const-class v0, Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 132
    const-class v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 133
    const-class v0, Lcom/android/settings/applications/DefaultAppSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 134
    const-class v0, Lcom/android/settings/applications/assist/ManageAssist;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 135
    const-class v0, Lcom/android/settings/applications/SpecialAccessSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 136
    const-class v0, Lcom/android/settings/users/UserSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 137
    const-class v0, Lcom/android/settings/gestures/AssistGestureSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 138
    const-class v0, Lcom/android/settings/gestures/PickupGestureSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 139
    const-class v0, Lcom/android/settings/gestures/DoubleTapScreenSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 140
    const-class v0, Lcom/android/settings/gestures/DoubleTapPowerSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 141
    const-class v0, Lcom/android/settings/gestures/DoubleTwistGestureSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 142
    const-class v0, Lcom/android/settings/gestures/SwipeUpGestureSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 143
    const-class v0, Lcom/android/settings/gestures/SwipeToNotificationSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 144
    const-class v0, Lcom/android/settings/gestures/GestureSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 145
    const-class v0, Lcom/android/settings/language/LanguageAndInputSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 146
    const-class v0, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 147
    const-class v0, Lcom/android/settings/location/ScanningSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 148
    const-class v0, Lcom/android/settings/security/SecuritySettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 149
    const-class v0, Lcom/android/settings/security/screenlock/ScreenLockSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 150
    const-class v0, Lcom/android/settings/security/EncryptionAndCredential;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 151
    const-class v0, Lcom/android/settings/security/ScreenPinningSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 152
    const-class v0, Lcom/android/settings/accounts/AccountDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 153
    const-class v0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 154
    const-class v0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 155
    const-class v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 156
    const-class v0, Lcom/android/settings/backup/BackupSettingsActivity;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 157
    const-class v0, Lcom/android/settings/backup/BackupSettingsFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 158
    const-class v0, Lcom/android/settings/DateTimeSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 159
    const-class v0, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 160
    const-class v0, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 161
    const-class v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 162
    const-class v0, Lcom/android/settings/deviceinfo/DeviceInfoSettingsNew;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 163
    const-class v0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 164
    const-class v0, Lcom/android/settings/LegalSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 165
    const-class v0, Lcom/android/settings/system/SystemDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 166
    const-class v0, Lcom/android/settings/system/ResetDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 167
    const-class v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 168
    const-class v0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 169
    const-class v0, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 170
    const-class v0, Lcom/android/settings/enterprise/EnterprisePrivacySettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 171
    const-class v0, Lcom/android/settings/nfc/PaymentSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 172
    const-class v0, Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 173
    const-class v0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 174
    const-class v0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 175
    const-class v0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 176
    const-class v0, Lcom/android/settings/dream/DreamSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 177
    const-class v0, Lcom/android/settings/support/SupportDashboardActivity;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 178
    const-class v0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 179
    const-class v0, Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 180
    const-class v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 181
    const-class v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 182
    const-class v0, Lcom/android/settings/security/LockscreenDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 183
    const-class v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 184
    const-class v0, Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 185
    const-class v0, Lcom/android/settings/notification/ZenModeMsgEventReminderSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 186
    const-class v0, Lcom/android/settings/notification/ZenModeCallsSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 187
    const-class v0, Lcom/android/settings/notification/ZenModeSoundVibrationSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 188
    const-class v0, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 189
    const-class v0, Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 190
    const-class v0, Lcom/android/settings/notification/ZenModeRestrictNotificationsSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 191
    const-class v0, Lcom/android/settings/display/NightDisplaySettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 192
    const-class v0, Lcom/android/settings/fuelgauge/SmartBatterySettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 193
    const-class v0, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 194
    const-class v0, Lcom/android/settings/accessibility/VibrationSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 195
    const-class v0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 196
    const-class v0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDeviceDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 197
    const-class v0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    .line 198
    return-void
.end method


# virtual methods
.method addIndex(Ljava/lang/Class;)V
    .locals 1
    .param p1, "indexClass"    # Ljava/lang/Class;

    .line 113
    iget-object v0, p0, Lcom/android/settings/search/SearchIndexableResourcesImpl;->sProviders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public getProviderValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/android/settings/search/SearchIndexableResourcesImpl;->sProviders:Ljava/util/Set;

    return-object v0
.end method
