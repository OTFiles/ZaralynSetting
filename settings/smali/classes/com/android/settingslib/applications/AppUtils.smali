.class public Lcom/android/settingslib/applications/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"


# static fields
.field private static sInstantAppDataProvider:Lcom/android/settingslib/applications/instantapps/InstantAppDataProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settingslib/applications/AppUtils;->sInstantAppDataProvider:Lcom/android/settingslib/applications/instantapps/InstantAppDataProvider;

    return-void
.end method

.method public static getLaunchByDefaultSummary(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/hardware/usb/IUsbManager;Landroid/content/pm/PackageManager;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "appEntry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .param p1, "usbManager"    # Landroid/hardware/usb/IUsbManager;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "context"    # Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 49
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {p2, v0}, Lcom/android/settingslib/applications/AppUtils;->hasPreferredActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 50
    invoke-static {p1, v0}, Lcom/android/settingslib/applications/AppUtils;->hasUsbDefaults(Landroid/hardware/usb/IUsbManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    .line 51
    .local v1, "hasPreferred":Z
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {p2, v0, v4}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v4

    .line 53
    .local v4, "status":I
    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    .line 55
    .local v2, "hasDomainURLsPreference":Z
    :goto_2
    if-nez v1, :cond_4

    if-eqz v2, :cond_3

    goto :goto_3

    .line 57
    :cond_3
    sget v3, Lcom/android/settingslib/R$string;->launch_defaults_none:I

    goto :goto_4

    .line 56
    :cond_4
    :goto_3
    sget v3, Lcom/android/settingslib/R$string;->launch_defaults_some:I

    .line 55
    :goto_4
    invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static hasPreferredActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, "prefActList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v1, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-virtual {p0, v1, v0, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 77
    const-string v2, "AppUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Have "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " number of activities in preferred list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static hasUsbDefaults(Landroid/hardware/usb/IUsbManager;Ljava/lang/String;)Z
    .locals 3
    .param p0, "usbManager"    # Landroid/hardware/usb/IUsbManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 62
    if-eqz p0, :cond_0

    .line 63
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-interface {p0, p1, v0}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z

    move-result v0

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AppUtils"

    const-string v2, "mUsbManager.hasDefaults"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0
    goto :goto_0

    .line 67
    :cond_0
    nop

    .line 68
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isInstant(Landroid/content/pm/ApplicationInfo;)Z
    .locals 8
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 85
    sget-object v0, Lcom/android/settingslib/applications/AppUtils;->sInstantAppDataProvider:Lcom/android/settingslib/applications/instantapps/InstantAppDataProvider;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/android/settingslib/applications/AppUtils;->sInstantAppDataProvider:Lcom/android/settingslib/applications/instantapps/InstantAppDataProvider;

    invoke-interface {v0, p0}, Lcom/android/settingslib/applications/instantapps/InstantAppDataProvider;->isInstantApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    return v1

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    return v1

    .line 96
    :cond_1
    const-string v0, "settingsdebug.instant.packages"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "propVal":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 98
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "searchTerms":[Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 100
    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 101
    .local v6, "term":Ljava/lang/String;
    iget-object v7, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 102
    return v1

    .line 100
    .end local v6
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 107
    .end local v3
    :cond_3
    return v2
.end method
