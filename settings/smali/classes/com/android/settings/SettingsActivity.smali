.class public Lcom/android/settings/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Lcom/android/settings/ButtonBarHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsActivity$HeaderListObserver;,
        Lcom/android/settings/SettingsActivity$DataObserver;,
        Lcom/android/settings/SettingsActivity$HeaderAdapter;,
        Lcom/android/settings/SettingsActivity$NoHomeDialogFragment;
    }
.end annotation


# static fields
.field private static final ENTRY_FRAGMENTS:[Ljava/lang/String;

.field public static final IGNORE_FRAGMENTS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mIsSettingOn:Z

.field private static sShowNoHomeNotice:Z


# instance fields
.field private SETTINGS_FOR_RESTRICTED:[I

.field private btnNext:Landroid/widget/Button;

.field private btnSkip:Landroid/widget/Button;

.field private fragStartName:Ljava/lang/String;

.field private isFinishProvision:Z

.field private isNewProvision:Z

.field private mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mDataObserver:Lcom/android/settings/SettingsActivity$DataObserver;

.field private mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

.field mDisplayHomeAsUpEnabled:Z

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFragmentClass:Ljava/lang/String;

.field private mGuideBtnNextOnClickListener:Landroid/view/View$OnClickListener;

.field private mGuideBtnSkipOnClickListener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderListListening:Z

.field private mHeaderListObserver:Lcom/android/settings/SettingsActivity$HeaderListObserver;

.field private mIUpudate:Lcom/readboy/store/AppUpdate/CheckImpl;

.field private mInLocalHeaderSwitch:Z

.field private mIsNoHeaderMode:Z

.field private mIsNoHeaderTitle:Ljava/lang/CharSequence;

.field private mIsShowingDashboard:Z

.field private mJumpPrefEnable:Z

.field private mLastHeader:Landroid/preference/PreferenceActivity$Header;

.field private mListening:Z

.field private mLocalActionbarSubTitle:Landroid/view/ViewGroup;

.field private mLocalActionbarTitle:Landroid/widget/TextView;

.field private mNeedToRevertToInitialFragment:Z

.field mOnBackStackChangedListener:Landroid/app/FragmentManager$OnBackStackChangedListener;

.field private mParentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mRequestType:I

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTopLevelHeaderId:I

.field mmLocalBreadCrumbsStatusChangeListener:Ljava/beans/PropertyChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 276
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/SettingsActivity;->sShowNoHomeNotice:Z

    .line 292
    sput-boolean v0, Lcom/android/settings/SettingsActivity;->mIsSettingOn:Z

    .line 1010
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-class v4, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 1011
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-class v4, Lcom/android/settings/datetime/timezone/RegionZonePicker;

    .line 1012
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 1010
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/android/settings/SettingsActivity;->IGNORE_FRAGMENTS:Ljava/util/ArrayList;

    .line 1014
    const/16 v1, 0x7a

    new-array v1, v1, [Ljava/lang/String;

    const-class v3, Lcom/android/settings/wifi/WifiSettings;

    .line 1016
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-class v0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    .line 1018
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    const-class v0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;

    .line 1020
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/applications/assist/ManageAssist;

    .line 1022
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/sim/SimSettings;

    .line 1023
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/TetherSettings;

    .line 1024
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .line 1025
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/vpn2/VpnSettings;

    .line 1026
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x7

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/DateTimeSettings;

    .line 1027
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    .line 1029
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    .line 1031
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/inputmethod/UserDictionaryList;

    .line 1032
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xb

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/inputmethod/UserDictionarySettings;

    .line 1033
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/DisplaySettings;

    .line 1035
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/deviceinfo/DeviceInfoSettingsNew;

    .line 1036
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xe

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;

    .line 1037
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 1038
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/applications/ProcessStatsUi;

    .line 1039
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x11

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/notification/NotificationStation;

    .line 1040
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x12

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/notification/ChannelNotificationSettings;

    .line 1041
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x13

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/location/LocationSettings;

    .line 1042
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x14

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/security/SecuritySettings;

    .line 1043
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x15

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/MultiSimSettingsFragment;

    .line 1045
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x16

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/MobileDataSettings;

    .line 1046
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x17

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/PrivacySettings;

    .line 1047
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x18

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/DeviceAdminSettings;

    .line 1048
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x19

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/accessibility/AccessibilitySettings;

    .line 1049
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    .line 1050
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;

    .line 1051
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/tts/TextToSpeechSettings;

    .line 1052
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    .line 1054
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 1055
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/nfc/AndroidBeam;

    .line 1057
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x20

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 1058
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x21

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    .line 1059
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x22

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/accounts/AccountSyncSettings;

    .line 1060
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x23

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/security/CryptKeeperSettings;

    .line 1062
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x24

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/datausage/DataUsageSummary;

    .line 1063
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x25

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/dream/DreamSettings;

    .line 1064
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x26

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/users/UserSettings;

    .line 1065
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x27

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/notification/NotificationAccessSettings;

    .line 1066
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x28

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;

    .line 1067
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x29

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/print/PrintSettingsFragment;

    .line 1069
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2a

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/print/PrintJobSettingsFragment;

    .line 1070
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2b

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/TrustedCredentialsSettings;

    .line 1071
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2c

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/nfc/PaymentSettings;

    .line 1072
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2d

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;

    .line 1073
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2e

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/notification/ZenModeSettings;

    .line 1074
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/IccLockSettings;

    .line 1076
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x30

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/password/CredentialCheckResultTracker;

    .line 1077
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x31

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settingslib/core/lifecycle/ObservableFragment;

    .line 1078
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x32

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    .line 1079
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x33

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    .line 1080
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x34

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    .line 1081
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x35

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    .line 1082
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x36

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;

    .line 1084
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x37

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/notification/AppNotificationSettings;

    .line 1086
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x38

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;

    .line 1089
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x39

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/security/screenlock/ScreenLockSettings;

    .line 1090
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3a

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/network/ApnSettings;

    .line 1091
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3b

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    .line 1093
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3c

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/wifi/calling/WifiCallingSettings;

    .line 1094
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3d

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/location/ScanningSettings;

    .line 1095
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3e

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/wifi/WifiAPITest;

    .line 1096
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3f

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/wifi/WifiInfo;

    .line 1097
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x40

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/TestingSettings;

    .line 1098
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x41

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/datausage/DataUsageList;

    .line 1103
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x42

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/network/NetworkDashboardFragment;

    .line 1104
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x43

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/network/NetworkDashboardFragmentNew;

    .line 1105
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x44

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;

    .line 1106
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x45

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/network/ApnEditor;

    .line 1107
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x46

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/accounts/ChooseAccountActivity;

    .line 1108
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x47

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/TouchModeSettings;

    .line 1112
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x48

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/bluetooth/OthersConnectionSettings;

    .line 1114
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x49

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/notification/NotificationAppListSettings;

    .line 1116
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4a

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/OthersSettings;

    .line 1117
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4b

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    .line 1118
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4c

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/notification/SoundSettings;

    .line 1119
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4d

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/deviceinfo/StorageSettings;

    .line 1120
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4e

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    .line 1121
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4f

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/applications/ProcessStatsDetail;

    .line 1125
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x50

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/wallpaper/WallpaperTypeSettings;

    .line 1126
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x51

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/applications/ManageApplicationsSettings;

    .line 1127
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x52

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;

    .line 1129
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x53

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;

    .line 1130
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x54

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;

    .line 1131
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x55

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    .line 1132
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x56

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    .line 1133
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x57

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/datausage/AppDataUsage;

    .line 1134
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x58

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;

    .line 1135
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x59

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/applications/AppLaunchSettings;

    .line 1136
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5a

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    .line 1137
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5b

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;

    .line 1138
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5c

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;

    .line 1139
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5d

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/SettingsRamFusion;

    .line 1141
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5e

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/SettingsOtherMoreFuns;

    .line 1142
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5f

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/datetime/timezone/RegionZonePicker;

    .line 1146
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x60

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/datausage/BillingCycleSettings;

    .line 1147
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x61

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/display/NightDisplaySettings;

    .line 1148
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x62

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/applications/DefaultAppSettings;

    .line 1149
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x63

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;

    .line 1150
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x64

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/CertificationMark;

    .line 1152
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x65

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/SendToRepairServiceFragment;

    .line 1153
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x66

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/ExportLogFragment;

    .line 1154
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x67

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/notification/ZenAccessSettings;

    .line 1155
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x68

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/DisplayColorTempSettings;

    .line 1156
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x69

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    .line 1157
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6a

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/PadUserSettings;

    .line 1158
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6b

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/PadModeSettings;

    .line 1159
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6c

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/NavigationBarSettings;

    .line 1160
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6d

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/HandyGestureSettings;

    .line 1161
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6e

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/NavigationBarSettingsGuide;

    .line 1162
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6f

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/wifi/WifiSettingsGuide;

    .line 1163
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x70

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/SettingsExtraMoreSettings;

    .line 1164
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x71

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/SettingsLauncherShortcutEnabler;

    .line 1165
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x72

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/ForcePortraitAppLandscape;

    .line 1166
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x73

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;

    .line 1167
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x74

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/MasterClearConfirm;

    .line 1168
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x75

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 1169
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x76

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    .line 1170
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x77

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/SettingsLauncherParentModeExchange;

    .line 1171
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x78

    aput-object v0, v1, v2

    const-class v0, Lcom/android/settings/HandyQuickServiceSettings;

    .line 1172
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x79

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    .line 1014
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 187
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mIsNoHeaderMode:Z

    .line 297
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/SettingsActivity;->mIsNoHeaderTitle:Ljava/lang/CharSequence;

    .line 298
    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mListening:Z

    .line 299
    iput-object v1, p0, Lcom/android/settings/SettingsActivity;->mDataObserver:Lcom/android/settings/SettingsActivity$DataObserver;

    .line 301
    iput v0, p0, Lcom/android/settings/SettingsActivity;->mRequestType:I

    .line 302
    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->isNewProvision:Z

    .line 303
    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->isFinishProvision:Z

    .line 307
    const/16 v2, 0x1d

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[I

    .line 358
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 607
    new-instance v2, Lcom/android/settings/SettingsActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/SettingsActivity$2;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mOnBackStackChangedListener:Landroid/app/FragmentManager$OnBackStackChangedListener;

    .line 675
    new-instance v2, Lcom/android/settings/SettingsActivity$3;

    invoke-direct {v2, p0}, Lcom/android/settings/SettingsActivity$3;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mGuideBtnSkipOnClickListener:Landroid/view/View$OnClickListener;

    .line 746
    new-instance v2, Lcom/android/settings/SettingsActivity$4;

    invoke-direct {v2, p0}, Lcom/android/settings/SettingsActivity$4;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mGuideBtnNextOnClickListener:Landroid/view/View$OnClickListener;

    .line 869
    new-instance v2, Lcom/android/settings/SettingsActivity$5;

    invoke-direct {v2, p0}, Lcom/android/settings/SettingsActivity$5;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mmLocalBreadCrumbsStatusChangeListener:Ljava/beans/PropertyChangeListener;

    .line 1177
    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 2241
    new-instance v2, Lcom/android/settings/SettingsActivity$7;

    invoke-direct {v2, p0}, Lcom/android/settings/SettingsActivity$7;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mHandler:Landroid/os/Handler;

    .line 2273
    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mHeaderListListening:Z

    .line 2274
    iput-object v1, p0, Lcom/android/settings/SettingsActivity;->mHeaderListObserver:Lcom/android/settings/SettingsActivity$HeaderListObserver;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a04f3
        0x7f0a0120
        0x7f0a04fe
        0x7f0a013a
        0x7f0a02b8
        0x7f0a03d4
        0x7f0a0142
        0x7f0a0067
        0x7f0a0254
        0x7f0a03ac
        0x7f0a02e5
        0x7f0a02dc
        0x7f0a04ce
        0x7f0a000c
        0x7f0a044e
        0x7f0a0009
        0x7f0a000a
        0x7f0a0319
        0x7f0a02a5
        0x7f0a044b
        0x7f0a01c0
        0x7f0a0136
        0x7f0a0137
        0x7f0a0138
        0x7f0a0115
        0x7f0a02cd
        0x7f0a02b4
        0x7f0a02ce
        0x7f0a0286
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsActivity;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .line 187
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SettingsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 187
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/SettingsActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .line 187
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->btnSkip:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SettingsActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .line 187
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->btnNext:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/SettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .line 187
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mIsNoHeaderMode:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/SettingsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .line 187
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mLocalActionbarTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/SettingsActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .line 187
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mLocalActionbarSubTitle:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/SettingsActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .line 187
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static checkValidFragment(Ljava/lang/String;)Z
    .locals 3
    .param p0, "fragmentName"    # Ljava/lang/String;

    .line 1199
    sget-object v0, Lcom/android/settings/SettingsActivity;->IGNORE_FRAGMENTS:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1200
    return v1

    .line 1202
    :cond_0
    move v0, v1

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1203
    sget-object v2, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    return v1

    .line 1202
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1205
    .end local v0
    :cond_2
    return v1
.end method

.method public static doCheckThenResetEbagLimit(I)V
    .locals 2
    .param p0, "limitInstall"    # I

    .line 1770
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1771
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ebag_install_limit"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1774
    :cond_0
    return-void
.end method

.method private getMetaData()V
    .locals 6

    .line 1778
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mJumpPrefEnable:Z

    .line 1779
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 1782
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, ":android:no_headers"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mIsNoHeaderMode:Z

    .line 1783
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mIsNoHeaderMode:Z

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    .line 1785
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mIsNoHeaderTitle:Ljava/lang/CharSequence;

    .line 1788
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1786
    :catch_0
    move-exception v2

    .line 1787
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, ""

    const-string v4, "=======divhee======mIsNoHeaderTitle==error====="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    .end local v2
    :cond_0
    :goto_0
    if-eqz v1, :cond_5

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    goto :goto_2

    .line 1792
    :cond_1
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/SettingsActivity;->mTopLevelHeaderId:I

    .line 1794
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/settings/SettingsActivity;->mTopLevelHeaderId:I

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    nop

    :cond_2
    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mJumpPrefEnable:Z

    .line 1796
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    .line 1799
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1801
    .local v0, "parentHeaderTitleRes":I
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1802
    .local v2, "parentFragmentClass":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 1803
    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v3, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1804
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v2, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1805
    if-eqz v0, :cond_3

    .line 1806
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1807
    :cond_3
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1808
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 1813
    .end local v0
    .end local v1
    .end local v2
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_1
    goto :goto_3

    .line 1791
    .restart local v1
    :cond_5
    :goto_2
    return-void

    .line 1811
    .end local v1
    :catch_1
    move-exception v0

    .line 1814
    :goto_3
    return-void
.end method

.method private getMetricsTag()Ljava/lang/String;
    .locals 3

    .line 1817
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1818
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, ":android:show_fragment"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1819
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, ":android:show_fragment"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1821
    :cond_0
    const-string v1, "com.android.settings."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1822
    const-string v1, "com.android.settings."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1824
    :cond_1
    return-object v0
.end method

.method public static guideExitResetSystemFlags(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 788
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "rby_guide_force_exit_flag"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 789
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "rby_guide_force_exit_flag"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 791
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 790
    :catch_0
    move-exception v2

    .line 793
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "readboy_disable_home_key"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 794
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "readboy_disable_home_key"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 796
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 795
    :catch_1
    move-exception v2

    .line 798
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SystemUIDisableTouch"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 799
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SystemUIDisableTouch"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 801
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 800
    :catch_2
    move-exception v2

    .line 803
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "readboy_setup_wizard_gesture_disabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 804
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "readboy_setup_wizard_gesture_disabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 806
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 805
    :catch_3
    move-exception v0

    .line 807
    :goto_3
    return-void
.end method

.method private highlightHeader(I)V
    .locals 4
    .param p1, "id"    # I

    .line 1313
    if-eqz p1, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1315
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1316
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1317
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->isMultiPane()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1318
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1322
    .end local v0
    :cond_0
    return-void
.end method

.method public static isDreamMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1546
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEbagLimit()Z
    .locals 3

    .line 1763
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ebag_install_limit"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public static isParentMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1535
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rby_parent_manager_functions"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1537
    .local v0, "parentModeSettings":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSim()Z
    .locals 2

    .line 1554
    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1555
    return v1

    .line 1557
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private isTwoSim()Z
    .locals 3

    .line 1565
    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1566
    return v1

    .line 1568
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1
.end method

.method private switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V
    .locals 1
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .line 1209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mInLocalHeaderSwitch:Z

    .line 1210
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 1211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mInLocalHeaderSwitch:Z

    .line 1212
    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .locals 9
    .param p1, "className"    # Ljava/lang/String;

    .line 1228
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1230
    .local v0, "cn":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1231
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 1233
    .local v2, "parentInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 1234
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1235
    .local v3, "fragmentClass":Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1236
    .local v4, "fragmentTitle":Ljava/lang/CharSequence;
    new-instance v5, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v5}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 1237
    .local v5, "parentHeader":Landroid/preference/PreferenceActivity$Header;
    iput-object v3, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1238
    iput-object v4, v5, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 1239
    iput-object v5, p0, Lcom/android/settings/SettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1241
    invoke-direct {p0, v5}, Lcom/android/settings/SettingsActivity;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 1242
    iget v6, p0, Lcom/android/settings/SettingsActivity;->mTopLevelHeaderId:I

    invoke-direct {p0, v6}, Lcom/android/settings/SettingsActivity;->highlightHeader(I)V

    .line 1244
    new-instance v6, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v6}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v6, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1245
    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.android.settings.PARENT_FRAGMENT_CLASS"

    .line 1246
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1247
    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 1251
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 1249
    :catch_0
    move-exception v1

    .line 1250
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find parent activity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    .end local v1
    :goto_0
    return-void
.end method

.method private switchToParentExtra(Ljava/lang/String;)V
    .locals 17
    .param p1, "className"    # Ljava/lang/String;

    move-object/from16 v8, p0

    .line 1255
    move-object/from16 v9, p1

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v10, v0

    .line 1257
    .local v10, "cn":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v11, v0

    .line 1258
    .local v11, "pm":Landroid/content/pm/PackageManager;
    const/16 v0, 0x80

    invoke-virtual {v11, v10, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    move-object v12, v0

    .line 1260
    .local v12, "parentInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v12, :cond_1

    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 1261
    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 1262
    .local v13, "fragmentClass":Ljava/lang/String;
    invoke-virtual {v12, v11}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v14, v0

    .line 1263
    .local v14, "fragmentTitle":Ljava/lang/CharSequence;
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    move-object v15, v0

    .line 1264
    .local v15, "newChildHeader":Landroid/preference/PreferenceActivity$Header;
    iput-object v13, v15, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1265
    iput-object v14, v15, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 1267
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    move-object v7, v0

    .line 1268
    .local v7, "newParentHeader":Landroid/preference/PreferenceActivity$Header;
    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1270
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, v12, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 1276
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1294
    .end local v7
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    :catch_0
    move-exception v0

    move-object/from16 v16, v10

    goto/16 :goto_3

    .line 1271
    .restart local v7
    .restart local v11
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v15
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 1273
    .local v1, "e1":Ljava/lang/Exception;
    :try_start_2
    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 1275
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1274
    :catch_2
    move-exception v0

    .line 1277
    .end local v1
    :goto_0
    :try_start_3
    iget-object v0, v7, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1278
    invoke-direct {v8, v7}, Lcom/android/settings/SettingsActivity;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 1279
    iget v0, v8, Lcom/android/settings/SettingsActivity;->mTopLevelHeaderId:I

    invoke-direct {v8, v0}, Lcom/android/settings/SettingsActivity;->highlightHeader(I)V

    .line 1281
    iget-object v2, v15, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, v15, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    const/4 v6, 0x0

    const/4 v0, 0x0

    move-object v1, v8

    move-object/from16 v16, v10

    move-object v10, v7

    move v7, v0

    .end local v7
    .local v10, "newParentHeader":Landroid/preference/PreferenceActivity$Header;
    .local v16, "cn":Landroid/content/ComponentName;
    :try_start_4
    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1283
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/SettingsApp;->mLocalBreadCrumbsStatusChange:Lcom/android/settings/BeanVariable;

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/SettingsApp;->mLocalBreadCrumbsStatusChange:Lcom/android/settings/BeanVariable;

    invoke-virtual {v1}, Lcom/android/settings/BeanVariable;->getProperty()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/BeanVariable;->setProperty(Ljava/lang/Object;)V

    .line 1285
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===divhee================getFragment==3==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1287
    .end local v16
    .restart local v7
    .local v10, "cn":Landroid/content/ComponentName;
    :cond_0
    move-object/from16 v16, v10

    move-object v10, v7

    .end local v7
    .local v10, "newParentHeader":Landroid/preference/PreferenceActivity$Header;
    .restart local v16
    invoke-direct {v8, v15}, Lcom/android/settings/SettingsActivity;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 1288
    iget v0, v8, Lcom/android/settings/SettingsActivity;->mTopLevelHeaderId:I

    invoke-direct {v8, v0}, Lcom/android/settings/SettingsActivity;->highlightHeader(I)V

    .line 1291
    :goto_1
    iput-object v15, v8, Lcom/android/settings/SettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1292
    iput-object v10, v8, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .end local v10
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 1294
    :catch_3
    move-exception v0

    goto :goto_3

    .line 1296
    .end local v16
    .local v10, "cn":Landroid/content/ComponentName;
    :cond_1
    move-object/from16 v16, v10

    .end local v10
    .restart local v16
    :goto_2
    goto :goto_4

    .line 1294
    .end local v16
    .restart local v10
    :catch_4
    move-exception v0

    move-object/from16 v16, v10

    .line 1295
    .end local v10
    .local v0, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v16
    :goto_3
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find parent activity : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    .end local v0
    :goto_4
    return-void
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .line 1572
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-static {p0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1573
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1574
    .local v0, "showDev":Z
    :goto_0
    const/4 v3, 0x0

    .line 1576
    .local v3, "i":I
    const-string v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1577
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1578
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1d

    .line 1579
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity$Header;

    .line 1581
    .local v4, "header":Landroid/preference/PreferenceActivity$Header;
    iget-wide v5, v4, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v5, v5

    .line 1582
    .local v5, "id":I
    const v6, 0x7f0a02c9

    if-ne v5, v6, :cond_1

    .line 1584
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1587
    :cond_1
    const v6, 0x7f0a0261

    if-ne v5, v6, :cond_2

    .line 1588
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1589
    :cond_2
    const v6, 0x7f0a04f3

    if-ne v5, v6, :cond_3

    .line 1591
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.wifi"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 1592
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1602
    :cond_3
    const v6, 0x7f0a0120

    if-ne v5, v6, :cond_4

    .line 1604
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1615
    :cond_4
    const v6, 0x7f0a04fe

    if-ne v5, v6, :cond_5

    .line 1617
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1624
    :cond_5
    const v6, 0x7f0a000c

    if-ne v5, v6, :cond_6

    .line 1626
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1634
    :cond_6
    const v6, 0x7f0a04ce

    if-ne v5, v6, :cond_7

    .line 1638
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1640
    :cond_7
    const v6, 0x7f0a02a5

    if-ne v5, v6, :cond_b

    .line 1641
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.nfc"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1642
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1645
    :cond_8
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v6

    .line 1646
    .local v6, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.nfc.hce"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 1648
    :cond_9
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1650
    .end local v6
    :cond_a
    goto/16 :goto_3

    .line 1651
    :cond_b
    const v6, 0x7f0a0136

    if-ne v5, v6, :cond_c

    .line 1652
    if-nez v0, :cond_17

    .line 1653
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1659
    :cond_c
    const v6, 0x7f0a02e5

    if-ne v5, v6, :cond_d

    .line 1660
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/SettingsActivity;->isDreamMode(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 1661
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1663
    :cond_d
    const v6, 0x7f0a02dc

    if-ne v5, v6, :cond_10

    .line 1664
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-static {}, Lcom/android/settings/SettingsActivity;->isEbagLimit()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1665
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 1666
    :cond_e
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/SettingsActivity;->isParentMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/SettingsActivity;->isDreamMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1667
    :cond_f
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 1669
    :cond_10
    const v6, 0x7f0a0137

    if-ne v5, v6, :cond_11

    .line 1670
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "show_development_settings_full"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_17

    .line 1671
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 1673
    :cond_11
    const v6, 0x7f0a0138

    if-ne v5, v6, :cond_14

    .line 1674
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "show_danger_frozen_settings_full"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v2, :cond_12

    move v6, v2

    goto :goto_2

    :cond_12
    move v6, v1

    .line 1675
    .local v6, "showworker":Z
    :goto_2
    if-nez v6, :cond_13

    .line 1676
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1678
    .end local v6
    :cond_13
    goto :goto_3

    :cond_14
    const v6, 0x7f0a0254

    if-ne v5, v6, :cond_15

    .line 1680
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 1681
    :cond_15
    const v6, 0x7f0a0319

    if-ne v5, v6, :cond_16

    .line 1683
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 1684
    :cond_16
    const v6, 0x7f0a000a

    if-ne v5, v6, :cond_17

    .line 1686
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1689
    :cond_17
    :goto_3
    const v6, 0x7f0a0115

    if-ne v5, v6, :cond_18

    .line 1690
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->isSim()Z

    move-result v6

    if-nez v6, :cond_18

    .line 1691
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1694
    :cond_18
    const v6, 0x7f0a0286

    if-ne v5, v6, :cond_19

    .line 1695
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->isTwoSim()Z

    move-result v6

    if-nez v6, :cond_19

    .line 1696
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1704
    :cond_19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1a

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_1a

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[I

    .line 1706
    invoke-static {v6, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 1707
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1711
    :cond_1a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1c

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_1c

    .line 1713
    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v6, :cond_1b

    .line 1714
    invoke-static {v4}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v6

    if-eqz v6, :cond_1b

    .line 1715
    iput-object v4, p0, Lcom/android/settings/SettingsActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1717
    :cond_1b
    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1718
    add-int/lit8 v3, v3, 0x1

    .line 1720
    .end local v4
    .end local v5
    :cond_1c
    goto/16 :goto_1

    .line 1721
    :cond_1d
    return-void
.end method


# virtual methods
.method public GuideNetworkRequestTypeCallbackParentManager(I)V
    .locals 4
    .param p1, "showHide"    # I

    .line 620
    iget v0, p0, Lcom/android/settings/SettingsActivity;->mRequestType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 621
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.readboy.parentmanager.ACTION_CHECK_TIMEDIALOG_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 622
    .local v0, "intent1":Landroid/content/Intent;
    const-string v1, "com.readboy.parentmanager"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    const-string v1, "callme"

    const-string v2, "com.android.settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    const-string v1, "needShowHide"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 625
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "====divhee=======ACTION_CHECK_TIMEDIALOG_STATE===needShowHide==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 628
    .end local v0
    :cond_0
    return-void
.end method

.method public GuideScreenNextEventAction()V
    .locals 5

    .line 653
    iget v0, p0, Lcom/android/settings/SettingsActivity;->mRequestType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 654
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->GuideNetworkRequestTypeCallbackParentManager(I)V

    .line 655
    return-void

    .line 657
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->isNewProvision:Z

    if-nez v0, :cond_1

    .line 658
    return-void

    .line 660
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 661
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.readboy.personalsetting"

    const-string v4, "com.readboy.personalsetting.activity.LandingSyncActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    .local v2, "c":Landroid/content/ComponentName;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 663
    const-string v3, "provisionMode"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 664
    const-string v3, "animType"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 665
    const-string v3, "isNewProvision"

    iget-boolean v4, p0, Lcom/android/settings/SettingsActivity;->isNewProvision:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 666
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 668
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 669
    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->isFinishProvision:Z

    .line 672
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 670
    :catch_0
    move-exception v1

    .line 671
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 673
    .end local v1
    :goto_0
    return-void
.end method

.method public GuideScreenSkipEventAction()V
    .locals 4

    .line 631
    iget v0, p0, Lcom/android/settings/SettingsActivity;->mRequestType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 632
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->GuideNetworkRequestTypeCallbackParentManager(I)V

    .line 633
    return-void

    .line 635
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->isNewProvision:Z

    if-nez v0, :cond_1

    .line 636
    return-void

    .line 638
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "cn.dream.action.ACTION_SYS_PROVISION_BRIDGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 639
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.readboy.rbsetupprovision"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    const-string v2, "isProvisionEnd"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 641
    const-string v2, "provisionEndResult"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 642
    const-string v2, "isNewProvision"

    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->isNewProvision:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 643
    const-string v2, "isDeleteProvisionFile"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 645
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 646
    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->isFinishProvision:Z

    .line 649
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 647
    :catch_0
    move-exception v1

    .line 648
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 650
    .end local v1
    :goto_0
    return-void
.end method

.method public destroyForceUpdate()V
    .locals 1

    .line 2361
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mIUpudate:Lcom/readboy/store/AppUpdate/CheckImpl;

    if-eqz v0, :cond_0

    .line 2362
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mIUpudate:Lcom/readboy/store/AppUpdate/CheckImpl;

    invoke-interface {v0}, Lcom/readboy/store/AppUpdate/CheckImpl;->releaseUpdate()V

    .line 2363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mIUpudate:Lcom/readboy/store/AppUpdate/CheckImpl;

    .line 2366
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 2365
    :catch_0
    move-exception v0

    .line 2367
    :goto_0
    return-void
.end method

.method public disabledGuideScreenForParentManager(Z)V
    .locals 2
    .param p1, "disable"    # Z

    .line 985
    iget v0, p0, Lcom/android/settings/SettingsActivity;->mRequestType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 987
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "readboy_disable_home_key"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 989
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 988
    :catch_0
    move-exception v0

    .line 991
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SystemUIDisableTouch"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 993
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 992
    :catch_1
    move-exception v0

    .line 995
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "readboy_setup_wizard_gesture_disabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 997
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 996
    :catch_2
    move-exception v0

    .line 999
    :cond_0
    :goto_2
    return-void
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 4
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .line 2312
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->onBackTask()V

    .line 2314
    if-eqz p1, :cond_0

    .line 2315
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2316
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2320
    :catch_0
    move-exception v0

    .line 2321
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "====divhee====finish_PreferencePanel===="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0
    goto :goto_1

    .line 2322
    :cond_0
    :goto_0
    nop

    .line 2323
    :goto_1
    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 6

    .line 1326
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1327
    .local v0, "superIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 1330
    .local v1, "startingFragment":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->onIsMultiPane()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1331
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1332
    .local v2, "modIntent":Landroid/content/Intent;
    const-string v3, ":android:show_fragment"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1333
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1334
    .local v3, "args":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 1335
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v3, v4

    goto :goto_0

    .line 1337
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v3, v4

    .line 1339
    :goto_0
    const-string v4, "intent"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1340
    const-string v4, ":android:show_fragment_args"

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1342
    return-object v2

    .line 1344
    .end local v2
    .end local v3
    :cond_1
    return-object v0
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .line 1834
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1352
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    return-object v0

    .line 1354
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1356
    .local v0, "intentClass":Ljava/lang/String;
    const-string v1, "com.android.settings.SubSettings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1357
    const-string v1, ":android:show_fragment"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1358
    const-string v1, ":android:show_fragment"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1362
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    return-object v1

    .line 1364
    :cond_2
    const-string v1, "com.android.settings.applications.manageapplications.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.applications.RunningServices"

    .line 1365
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.applications.StorageUse"

    .line 1366
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1372
    :cond_3
    return-object v0
.end method

.method public getSwitchBar(Ljava/lang/String;)Lcom/android/settings/widget/SwitchBar;
    .locals 2
    .param p1, "lable"    # Ljava/lang/String;

    .line 1180
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->removeAllOnSwitchChangeListener()V

    .line 1181
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setController(Ljava/lang/String;)V

    .line 1182
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 1183
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method public hasNextButton()Z
    .locals 1

    .line 1829
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public initForceUpdate(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 2348
    :try_start_0
    new-instance v0, Lcom/readboy/store/AppUpdate/ApUpdateFactory;

    invoke-direct {v0}, Lcom/readboy/store/AppUpdate/ApUpdateFactory;-><init>()V

    .line 2349
    .local v0, "factory":Lcom/readboy/store/AppUpdate/ApUpdateFactory;
    invoke-virtual {v0}, Lcom/readboy/store/AppUpdate/ApUpdateFactory;->createDefaultCheck()Lcom/readboy/store/AppUpdate/CheckImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SettingsActivity;->mIUpudate:Lcom/readboy/store/AppUpdate/CheckImpl;

    .line 2350
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mIUpudate:Lcom/readboy/store/AppUpdate/CheckImpl;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/readboy/store/AppUpdate/CheckImpl;->isShowDialogWhenNormalUpdate(Z)V

    .line 2351
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mIUpudate:Lcom/readboy/store/AppUpdate/CheckImpl;

    invoke-interface {v1, p1}, Lcom/readboy/store/AppUpdate/CheckImpl;->startCheck(Landroid/app/Activity;)V

    .line 2353
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2352
    :catch_0
    move-exception v0

    .line 2354
    :goto_0
    return-void
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;

    .line 1190
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1191
    sget-object v2, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1190
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1193
    .end local v1
    :cond_1
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 2306
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "=requestCode===divhee===onActivityResult===SettingsActivity===resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "===data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2308
    return-void
.end method

.method public onBackTask()V
    .locals 1

    .line 2330
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2331
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    goto :goto_0

    .line 2333
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 2337
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    .line 2335
    :catch_0
    move-exception v0

    .line 2336
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->onBackPressed()V

    .line 2338
    .end local v0
    :goto_1
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .line 1425
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1426
    const v0, 0x7f15009b

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/SettingsActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 1427
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity;->updateHeaderList(Ljava/util/List;)V

    .line 1429
    :cond_0
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "shortTitleRes"    # I

    .line 1397
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1399
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 1401
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1405
    :cond_0
    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .line 1406
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Lcom/android/settings/dream/DreamSettings;

    .line 1408
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Lcom/android/settings/location/LocationSettings;

    .line 1409
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    .line 1410
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Lcom/android/settings/print/PrintSettingsFragment;

    .line 1411
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Lcom/android/settings/print/PrintServiceSettingsFragment;

    .line 1412
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1413
    :cond_1
    const-string v1, "settings:ui_options"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1416
    :cond_2
    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1417
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    move-object/from16 v0, p0

    .line 384
    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "settings:ui_options"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "settings:ui_options"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/Window;->setUiOptions(I)V

    .line 388
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getMetaData()V

    .line 389
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mInLocalHeaderSwitch:Z

    .line 390
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 391
    iput-boolean v3, v0, Lcom/android/settings/SettingsActivity;->mInLocalHeaderSwitch:Z

    .line 392
    invoke-virtual {v0, v0}, Lcom/android/settings/SettingsActivity;->initForceUpdate(Landroid/app/Activity;)V

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    .line 395
    .local v4, "actionBar":Landroid/app/ActionBar;
    if-eqz v4, :cond_a

    .line 396
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 397
    .local v6, "point":Landroid/graphics/Point;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 398
    iget v7, v6, Landroid/graphics/Point;->x:I

    iget v8, v6, Landroid/graphics/Point;->y:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 399
    .local v7, "lcdwidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070190

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 400
    .local v8, "leftmarginSmall":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07018f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    .line 401
    .local v9, "leftmarginBigger":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/settings/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/settings/SettingsActivity;->fragStartName:Ljava/lang/String;

    .line 402
    const v10, 0x7f0d0029

    .line 404
    .local v10, "action_bar_custom_layout_id":I
    iget-object v11, v0, Lcom/android/settings/SettingsActivity;->fragStartName:Ljava/lang/String;

    const-class v12, Lcom/android/settings/wifi/WifiSettingsGuide;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    iget-object v11, v0, Lcom/android/settings/SettingsActivity;->fragStartName:Ljava/lang/String;

    const-class v12, Lcom/android/settings/NavigationBarSettingsGuide;

    .line 405
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 406
    :cond_1
    const v10, 0x7f0d002a

    .line 408
    :cond_2
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f0a0016

    invoke-virtual {v0, v12}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    invoke-virtual {v11, v10, v12, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 409
    .local v11, "actionbarLayout":Landroid/view/View;
    const v12, 0x7f0a024d

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/view/View;->setMinimumWidth(I)V

    .line 410
    const v12, 0x7f0a024e

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->onIsHidingHeaders()Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x4

    goto :goto_0

    :cond_3
    move v13, v3

    :goto_0
    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 411
    const v12, 0x7f0a0250

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v0, Lcom/android/settings/SettingsActivity;->mLocalActionbarTitle:Landroid/widget/TextView;

    .line 412
    const v13, 0x7f0a024f

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    iput-object v14, v0, Lcom/android/settings/SettingsActivity;->mLocalActionbarSubTitle:Landroid/view/ViewGroup;

    .line 413
    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 414
    .local v14, "child":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->onIsHidingHeaders()Z

    move-result v15

    if-eqz v15, :cond_4

    move v15, v9

    goto :goto_1

    :cond_4
    move v15, v8

    :goto_1
    invoke-virtual {v14, v15, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 415
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 416
    .local v15, "vglp":Landroid/view/ViewGroup$LayoutParams;
    int-to-float v5, v7

    const v16, 0x3eb33333    # 0.35f

    mul-float v5, v5, v16

    float-to-int v5, v5

    iput v5, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 417
    invoke-virtual {v14, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 419
    .end local v14
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 420
    .end local v15
    .local v13, "vglp":Landroid/view/ViewGroup$LayoutParams;
    int-to-float v14, v7

    const v15, 0x3f266666    # 0.65f

    mul-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 421
    invoke-virtual {v5, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 424
    .local v12, "textTitle":Landroid/widget/TextView;
    const v14, 0x7f0a024c

    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    iput-object v14, v0, Lcom/android/settings/SettingsActivity;->btnSkip:Landroid/widget/Button;

    .line 425
    const v14, 0x7f0a024b

    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    iput-object v14, v0, Lcom/android/settings/SettingsActivity;->btnNext:Landroid/widget/Button;

    .line 427
    iget-object v14, v0, Lcom/android/settings/SettingsActivity;->fragStartName:Ljava/lang/String;

    const-class v15, Lcom/android/settings/wifi/WifiSettingsGuide;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    const v15, 0x7f0a024a

    if-eqz v14, :cond_7

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v2, "request_type"

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mRequestType:I

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v14, "isNewProvision"

    invoke-virtual {v2, v14, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->isNewProvision:Z

    .line 430
    invoke-virtual {v11, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 431
    const v2, 0x7f120b3a

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(I)V

    .line 433
    const/4 v14, 0x1

    invoke-static {v14}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 434
    const/16 v14, 0x11

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 435
    invoke-virtual {v12, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 436
    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 437
    .local v14, "rllp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v15, -0x1

    iput v15, v14, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 438
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    .line 441
    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->btnSkip:Landroid/widget/Button;

    move-object/from16 v17, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .end local v4
    .local v17, "actionBar":Landroid/app/ActionBar;
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const v4, 0x7f0a024a

    invoke-virtual {v2, v4, v3}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 442
    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->btnSkip:Landroid/widget/Button;

    iget-object v3, v0, Lcom/android/settings/SettingsActivity;->mGuideBtnSkipOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->btnSkip:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "isShowProvisionExit"

    const/4 v15, 0x0

    invoke-virtual {v3, v4, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/16 v3, 0x8

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 444
    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->btnSkip:Landroid/widget/Button;

    const v3, 0x7f120b4d

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 445
    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->btnSkip:Landroid/widget/Button;

    const-class v4, Lcom/android/settings/wifi/WifiSettingsGuide;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 446
    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->btnNext:Landroid/widget/Button;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const v4, 0x7f0a024a

    invoke-virtual {v2, v4, v3}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 447
    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->btnNext:Landroid/widget/Button;

    iget-object v3, v0, Lcom/android/settings/SettingsActivity;->mGuideBtnNextOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->btnNext:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 449
    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->btnNext:Landroid/widget/Button;

    const v3, 0x7f121150

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 450
    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->btnNext:Landroid/widget/Button;

    const-class v3, Lcom/android/settings/wifi/WifiSettingsGuide;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 451
    iget v2, v0, Lcom/android/settings/SettingsActivity;->mRequestType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 452
    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->btnSkip:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 453
    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->btnNext:Landroid/widget/Button;

    const v3, 0x7f120b4d

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 455
    .end local v14
    :cond_6
    goto/16 :goto_4

    .end local v17
    .restart local v4
    :cond_7
    move-object/from16 v17, v4

    .end local v4
    .restart local v17
    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->fragStartName:Ljava/lang/String;

    const-class v3, Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 456
    const v2, 0x7f0a024a

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 457
    const v3, 0x7f120b37

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(I)V

    .line 459
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 460
    const/16 v4, 0x11

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 461
    invoke-virtual {v12, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 462
    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 463
    .local v2, "rllp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, -0x1

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 464
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    invoke-virtual {v0, v3}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    .line 467
    iget-object v3, v0, Lcom/android/settings/SettingsActivity;->btnSkip:Landroid/widget/Button;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const v14, 0x7f0a024a

    invoke-virtual {v3, v14, v4}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 468
    iget-object v3, v0, Lcom/android/settings/SettingsActivity;->btnSkip:Landroid/widget/Button;

    iget-object v4, v0, Lcom/android/settings/SettingsActivity;->mGuideBtnSkipOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    iget-object v3, v0, Lcom/android/settings/SettingsActivity;->btnSkip:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v14, "isHidePreBtn"

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v14, 0x1

    if-ne v4, v14, :cond_8

    const/16 v4, 0x8

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 470
    iget-object v3, v0, Lcom/android/settings/SettingsActivity;->btnSkip:Landroid/widget/Button;

    const v4, 0x7f121148

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 471
    iget-object v3, v0, Lcom/android/settings/SettingsActivity;->btnSkip:Landroid/widget/Button;

    const-class v4, Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 472
    iget-object v3, v0, Lcom/android/settings/SettingsActivity;->btnNext:Landroid/widget/Button;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const v14, 0x7f0a024a

    invoke-virtual {v3, v14, v4}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 473
    iget-object v3, v0, Lcom/android/settings/SettingsActivity;->btnNext:Landroid/widget/Button;

    iget-object v4, v0, Lcom/android/settings/SettingsActivity;->mGuideBtnNextOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    iget-object v3, v0, Lcom/android/settings/SettingsActivity;->btnNext:Landroid/widget/Button;

    const v4, 0x7f120648

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 475
    iget-object v3, v0, Lcom/android/settings/SettingsActivity;->btnNext:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 476
    iget-object v3, v0, Lcom/android/settings/SettingsActivity;->btnNext:Landroid/widget/Button;

    const-class v4, Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 477
    .end local v2
    goto :goto_4

    .line 478
    :cond_9
    const v2, 0x7f0a024a

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 479
    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->btnSkip:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->btnNext:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    :goto_4
    move-object/from16 v2, v17

    invoke-virtual {v2, v11}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 486
    .end local v17
    .local v2, "actionBar":Landroid/app/ActionBar;
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .end local v5
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    goto :goto_5

    .line 488
    .end local v2
    .restart local v4
    :cond_a
    move-object v2, v4

    .end local v4
    .restart local v2
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->onIsMultiPane()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 489
    iget v3, v0, Lcom/android/settings/SettingsActivity;->mTopLevelHeaderId:I

    invoke-direct {v0, v3}, Lcom/android/settings/SettingsActivity;->highlightHeader(I)V

    .line 492
    const v3, 0x7f120cd0

    invoke-virtual {v0, v3}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    .line 496
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, ":android:show_fragment"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 498
    .local v3, "initialFragmentName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 499
    .local v4, "cn":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 501
    .local v5, "className":Ljava/lang/String;
    const-class v6, Lcom/android/settings/Settings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    .line 506
    instance-of v6, v0, Lcom/android/settings/SubSettings;

    if-nez v6, :cond_d

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, ":settings:show_fragment_as_subsetting"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_6

    :cond_c
    const/16 v18, 0x0

    goto :goto_7

    :cond_d
    :goto_6
    const/16 v18, 0x1

    :goto_7
    move/from16 v6, v18

    .line 511
    .local v6, "isSubSettings":Z
    if-eqz v6, :cond_e

    .line 512
    const v7, 0x7f130207

    invoke-virtual {v0, v7}, Lcom/android/settings/SettingsActivity;->setTheme(I)V

    .line 516
    :cond_e
    if-eqz v1, :cond_f

    .line 517
    const-string v7, "com.android.settings.CURRENT_HEADER"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceActivity$Header;

    iput-object v7, v0, Lcom/android/settings/SettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 518
    const-string v7, "com.android.settings.PARENT_HEADER"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceActivity$Header;

    iput-object v7, v0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 524
    :cond_f
    if-eqz v1, :cond_10

    iget-object v7, v0, Lcom/android/settings/SettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v7, :cond_10

    .line 526
    iget-object v7, v0, Lcom/android/settings/SettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v7, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Lcom/android/settings/SettingsActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 527
    :cond_10
    iget-boolean v7, v0, Lcom/android/settings/SettingsActivity;->mIsNoHeaderMode:Z

    if-eqz v7, :cond_12

    .line 528
    iget-object v7, v0, Lcom/android/settings/SettingsActivity;->mIsNoHeaderTitle:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_8

    :cond_11
    iget-object v7, v0, Lcom/android/settings/SettingsActivity;->mIsNoHeaderTitle:Ljava/lang/CharSequence;

    :goto_8
    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Lcom/android/settings/SettingsActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 531
    :cond_12
    const/4 v8, 0x0

    :goto_9
    iget-object v7, v0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v7, :cond_13

    .line 532
    iget-object v7, v0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v7, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    new-instance v9, Lcom/android/settings/SettingsActivity$1;

    invoke-direct {v9, v0}, Lcom/android/settings/SettingsActivity$1;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/settings/SettingsActivity;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 539
    iget-boolean v7, v0, Lcom/android/settings/SettingsActivity;->mJumpPrefEnable:Z

    if-eqz v7, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_13

    .line 540
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/settings/SettingsActivity;->switchToParentExtra(Ljava/lang/String;)V

    .line 546
    :cond_13
    if-eqz v2, :cond_14

    .line 547
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 548
    invoke-virtual {v2, v7}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 589
    :cond_14
    const v7, 0x7f0a043c

    invoke-virtual {v0, v7}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/settings/widget/SwitchBar;

    iput-object v7, v0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 590
    iget-object v7, v0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v7, :cond_15

    .line 591
    iget-object v7, v0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getMetricsTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/settings/widget/SwitchBar;->setMetricsTag(Ljava/lang/String;)V

    .line 594
    :cond_15
    new-instance v7, Lcom/android/settings/SettingsActivity$DataObserver;

    iget-object v8, v0, Lcom/android/settings/SettingsActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v7, v0, v8}, Lcom/android/settings/SettingsActivity$DataObserver;-><init>(Lcom/android/settings/SettingsActivity;Landroid/os/Handler;)V

    iput-object v7, v0, Lcom/android/settings/SettingsActivity;->mDataObserver:Lcom/android/settings/SettingsActivity$DataObserver;

    .line 596
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/settings/SettingsApp;->mLocalBreadCrumbsStatusChange:Lcom/android/settings/BeanVariable;

    iget-object v8, v0, Lcom/android/settings/SettingsActivity;->mmLocalBreadCrumbsStatusChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-virtual {v7, v8}, Lcom/android/settings/BeanVariable;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 597
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/settings/SettingsApp;->mLocalBreadCrumbsStatusChange:Lcom/android/settings/BeanVariable;

    iget-object v8, v0, Lcom/android/settings/SettingsActivity;->mmLocalBreadCrumbsStatusChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-virtual {v7, v8}, Lcom/android/settings/BeanVariable;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 598
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    .line 599
    .local v7, "manager":Landroid/app/FragmentManager;
    iget-object v8, v0, Lcom/android/settings/SettingsActivity;->mOnBackStackChangedListener:Landroid/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->removeOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 600
    iget-object v8, v0, Lcom/android/settings/SettingsActivity;->mOnBackStackChangedListener:Landroid/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 602
    new-instance v8, Lcom/android/settings/SettingsActivity$HeaderListObserver;

    iget-object v9, v0, Lcom/android/settings/SettingsActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, v0, v9}, Lcom/android/settings/SettingsActivity$HeaderListObserver;-><init>(Lcom/android/settings/SettingsActivity;Landroid/os/Handler;)V

    iput-object v8, v0, Lcom/android/settings/SettingsActivity;->mHeaderListObserver:Lcom/android/settings/SettingsActivity$HeaderListObserver;

    .line 604
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "0001"

    invoke-virtual {v8, v9, v10}, Lcom/android/settings/SettingsApp;->printBundleDetail(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 605
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1003
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 1004
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/SettingsActivity;->mIsSettingOn:Z

    .line 1006
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/SettingsApp;->mLocalBreadCrumbsStatusChange:Lcom/android/settings/BeanVariable;

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mmLocalBreadCrumbsStatusChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/BeanVariable;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 1007
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->destroyForceUpdate()V

    .line 1008
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .line 1381
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 1382
    .local v0, "fragmentClass":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1383
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 1384
    .local v1, "header":Landroid/preference/PreferenceActivity$Header;
    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1385
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 1386
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1387
    iput-object v1, p0, Lcom/android/settings/SettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1388
    return-object v1

    .line 1391
    .end local v1
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v1
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 4
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .line 2098
    const/4 v0, 0x0

    .line 2101
    .local v0, "revert":Z
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 2108
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    .line 2105
    :catch_0
    move-exception v1

    .line 2106
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    const v3, 0x7f1200b4

    invoke-virtual {v2, v3}, Lcom/android/settings/SettingsApp;->showAppToastShort(I)V

    .line 2107
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1
    goto :goto_1

    .line 2102
    :catch_1
    move-exception v1

    .line 2103
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    const v3, 0x7f1200b3

    invoke-virtual {v2, v3}, Lcom/android/settings/SettingsApp;->showAppToastShort(I)V

    .line 2104
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .end local v1
    goto :goto_0

    .line 2110
    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_0

    .line 2111
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    iget-wide v1, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/android/settings/SettingsActivity;->highlightHeader(I)V

    goto :goto_2

    .line 2113
    :cond_0
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    .line 2129
    :goto_2
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1301
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1304
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 1305
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 1308
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1310
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 949
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 951
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->setListening(Z)V

    .line 954
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 955
    .local v1, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v2, v1, Lcom/android/settings/SettingsActivity$HeaderAdapter;

    if-eqz v2, :cond_0

    .line 956
    move-object v2, v1

    check-cast v2, Lcom/android/settings/SettingsActivity$HeaderAdapter;

    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->pause()V

    .line 958
    :cond_0
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 959
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    .line 970
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->fragStartName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->fragStartName:Ljava/lang/String;

    const-class v3, Lcom/android/settings/wifi/WifiSettingsGuide;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 971
    iget v2, p0, Lcom/android/settings/SettingsActivity;->mRequestType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 972
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->disabledGuideScreenForParentManager(Z)V

    .line 973
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->GuideScreenSkipEventAction()V

    goto :goto_0

    .line 974
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->isFinishProvision:Z

    if-nez v0, :cond_3

    .line 975
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->GuideScreenSkipEventAction()V

    .line 978
    :cond_3
    :goto_0
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .line 2145
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v0

    .line 2146
    .local v0, "titleRes":I
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/wallpaper/WallpaperTypeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2147
    const v0, 0x7f121042

    goto :goto_0

    .line 2148
    :cond_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/users/OwnerInfoSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2149
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_2

    .line 2150
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2151
    const v0, 0x7f120a75

    goto :goto_0

    .line 2153
    :cond_1
    const v0, 0x7f120fb9

    .line 2157
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v4, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 2159
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "===divhee================onPreferenceStartFragment==2==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceStartFragment(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/support/v7/preference/Preference;

    .line 2133
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 2136
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/SettingsApp;->mLocalBreadCrumbsStatusChange:Lcom/android/settings/BeanVariable;

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/SettingsApp;->mLocalBreadCrumbsStatusChange:Lcom/android/settings/BeanVariable;

    invoke-virtual {v1}, Lcom/android/settings/BeanVariable;->getProperty()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/BeanVariable;->setProperty(Ljava/lang/Object;)V

    .line 2138
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===divhee================getFragment==1==="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    return v2
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 861
    :try_start_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 863
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 862
    :catch_0
    move-exception v0

    .line 865
    :goto_0
    const-string v0, ":settings:show_home_as_up"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 866
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 905
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 907
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->setListening(Z)V

    .line 909
    new-instance v1, Lcom/android/settings/SettingsActivity$6;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsActivity$6;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    .line 915
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.settingslib.development.DevelopmentSettingsEnabler.SETTINGS_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 918
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 919
    .local v1, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v2, v1, Lcom/android/settings/SettingsActivity$HeaderAdapter;

    if-eqz v2, :cond_0

    .line 920
    move-object v2, v1

    check-cast v2, Lcom/android/settings/SettingsActivity$HeaderAdapter;

    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->resume()V

    .line 922
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->invalidateHeaders()V

    .line 939
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->fragStartName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->fragStartName:Ljava/lang/String;

    const-class v3, Lcom/android/settings/wifi/WifiSettingsGuide;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 940
    iget v2, p0, Lcom/android/settings/SettingsActivity;->mRequestType:I

    if-ne v2, v0, :cond_1

    .line 941
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->disabledGuideScreenForParentManager(Z)V

    .line 942
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->GuideNetworkRequestTypeCallbackParentManager(I)V

    .line 945
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 835
    :try_start_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 838
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 836
    :catch_0
    move-exception v0

    .line 837
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 839
    .end local v0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->saveState(Landroid/os/Bundle;)V

    .line 840
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 846
    const-string v0, ":settings:show_home_as_up"

    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 849
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    .line 850
    const-string v0, "com.android.settings.CURRENT_HEADER"

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_1

    .line 853
    const-string v0, "com.android.settings.PARENT_HEADER"

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 856
    :cond_1
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 2180
    if-nez p1, :cond_0

    .line 2181
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 2183
    :cond_0
    const-string v0, "device_policy"

    .line 2184
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 2185
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    new-instance v1, Lcom/android/settings/SettingsActivity$HeaderAdapter;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getHeaders()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/app/admin/DevicePolicyManager;)V

    invoke-super {p0, v1}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 2187
    .end local v0
    :goto_0
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .line 2230
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2231
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/SettingsActivity;->mListening:Z

    .line 2232
    if-eqz p1, :cond_1

    .line 2233
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDataObserver:Lcom/android/settings/SettingsActivity$DataObserver;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity$DataObserver;->startObserving()V

    .line 2234
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mHeaderListObserver:Lcom/android/settings/SettingsActivity$HeaderListObserver;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity$HeaderListObserver;->startObserving()V

    goto :goto_0

    .line 2236
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDataObserver:Lcom/android/settings/SettingsActivity$DataObserver;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity$DataObserver;->endObserving()V

    .line 2237
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mHeaderListObserver:Lcom/android/settings/SettingsActivity$HeaderListObserver;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity$HeaderListObserver;->endObserving()V

    .line 2239
    :goto_0
    return-void
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .line 2175
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/Settings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;

    .line 1433
    const v0, 0x7f0a0251

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/view/LocalBreadCrumbs;

    .line 1434
    .local v0, "crumbs":Lcom/android/settings/view/LocalBreadCrumbs;
    if-eqz v0, :cond_0

    .line 1435
    invoke-virtual {v0, p1}, Lcom/android/settings/view/LocalBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;)V

    .line 1437
    :cond_0
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "=getTitle=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "=title====divhee========showBreadCrumbs=shortTitle1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "==NO_HEADERS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mIsNoHeaderMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1440
    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mIsNoHeaderMode:Z

    const v2, 0x7f120cd0

    if-eqz v1, :cond_7

    .line 1441
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, ":settings:show_fragment_title_resid"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1442
    .local v1, "initialTitleResId":I
    if-lez v1, :cond_1

    .line 1444
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v3

    .line 1446
    goto :goto_0

    .line 1445
    :catch_0
    move-exception v3

    .line 1448
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1449
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1450
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    goto :goto_1

    .line 1452
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1455
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mLocalActionbarTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 1456
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mLocalActionbarTitle:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, p1

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1458
    :cond_5
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mLocalActionbarSubTitle:Landroid/view/ViewGroup;

    if-eqz v2, :cond_6

    .line 1459
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mLocalActionbarSubTitle:Landroid/view/ViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1461
    .end local v1
    :cond_6
    goto :goto_3

    .line 1462
    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    .line 1466
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 1467
    .local v1, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v2, v1, Lcom/android/settings/SettingsActivity$HeaderAdapter;

    if-eqz v2, :cond_8

    .line 1468
    move-object v2, v1

    check-cast v2, Lcom/android/settings/SettingsActivity$HeaderAdapter;

    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->notifyDataSetChanged()V

    .line 1471
    :cond_8
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleRes"    # I
    .param p6, "shortTitleRes"    # I

    .line 2219
    :try_start_0
    invoke-super/range {p0 .. p6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 2226
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    .line 2223
    :catch_0
    move-exception v0

    .line 2224
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2225
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    const v2, 0x7f1200b4

    invoke-virtual {v1, v2}, Lcom/android/settings/SettingsApp;->showAppToastShort(I)V

    .end local v0
    goto :goto_1

    .line 2220
    :catch_1
    move-exception v0

    .line 2221
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    const v2, 0x7f1200b3

    invoke-virtual {v1, v2}, Lcom/android/settings/SettingsApp;->showAppToastShort(I)V

    .line 2222
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .end local v0
    goto :goto_0

    .line 2227
    :goto_1
    return-void
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 1
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .line 1216
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mInLocalHeaderSwitch:Z

    if-nez v0, :cond_0

    .line 1217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1218
    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1220
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 1221
    return-void
.end method
