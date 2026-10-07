.class public Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "AppNotificationPreferenceController.java"


# instance fields
.field private final mBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mChannelId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mChannelId:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 40
    return-void
.end method

.method public static getNotificationSummary(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "appRow"    # Lcom/android/settings/notification/NotificationBackend$AppRow;
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    if-nez p0, :cond_0

    .line 82
    const-string v0, ""

    return-object v0

    .line 84
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    const v1, 0x7f1209a2

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 86
    :cond_1
    iget v0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->channelCount:I

    const v2, 0x7f1209a3

    if-nez v0, :cond_2

    .line 87
    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 88
    :cond_2
    iget v0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->channelCount:I

    iget v3, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->blockedChannelCount:I

    if-ne v0, v3, :cond_3

    .line 89
    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 91
    :cond_3
    iget v0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->blockedChannelCount:I

    if-nez v0, :cond_4

    .line 92
    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 94
    :cond_4
    const v0, 0x7f1209a4

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100029

    iget v5, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->blockedChannelCount:I

    new-array v1, v1, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->blockedChannelCount:I

    .line 96
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v1, v7

    .line 95
    invoke-virtual {v3, v4, v5, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    .line 94
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNotificationSummary(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "appEntry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "backend"    # Lcom/android/settings/notification/NotificationBackend;

    .line 74
    nop

    .line 75
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p3, p2, v0, v1}, Lcom/android/settings/notification/NotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;

    move-result-object v0

    .line 76
    .local v0, "appRow":Lcom/android/settings/notification/NotificationBackend$AppRow;
    invoke-static {v0, p2}, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->getNotificationSummary(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected getArguments()Landroid/os/Bundle;
    .locals 3

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mChannelId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 65
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 66
    const-string v1, ":settings:fragment_args_key"

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    return-object v0
.end method

.method protected getDetailFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            ">;"
        }
    .end annotation

    .line 58
    const-class v0, Lcom/android/settings/notification/AppNotificationSettings;

    return-object v0
.end method

.method public setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V
    .locals 2
    .param p1, "parent"    # Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 45
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mChannelId:Ljava/lang/String;

    .line 49
    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 53
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->getNotificationSummary(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method
