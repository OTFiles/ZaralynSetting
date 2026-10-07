.class Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$1;
.super Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;
.source "AppStateChangeWifiStateBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 4
    .param p1, "info"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 86
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    .line 90
    .local v1, "wifiSettingsState":Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;
    iget-object v2, v1, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;->packageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, v1, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 93
    .local v2, "requestedPermissions":[Ljava/lang/String;
    const-string v3, "android.permission.NETWORK_SETTINGS"

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    return v0

    .line 101
    .end local v2
    :cond_1
    iget-boolean v0, v1, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;->permissionDeclared:Z

    return v0

    .line 87
    .end local v1
    :cond_2
    :goto_0
    return v0
.end method

.method public init()V
    .locals 0

    .line 82
    return-void
.end method
