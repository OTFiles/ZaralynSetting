.class public Lcom/android/settings/security/LockscreenDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LockscreenDashboardFragment.java"

# interfaces
.implements Lcom/android/settings/security/OwnerInfoPreferenceController$OwnerInfoCallback;


# static fields
.field static final KEY_ADD_USER_FROM_LOCK_SCREEN:Ljava/lang/String; = "security_lockscreen_add_users_when_locked"

.field static final KEY_LOCK_SCREEN_NOTIFICATON:Ljava/lang/String; = "security_setting_lock_screen_notif"

.field static final KEY_LOCK_SCREEN_NOTIFICATON_WORK_PROFILE:Ljava/lang/String; = "security_setting_lock_screen_notif_work"

.field static final KEY_LOCK_SCREEN_NOTIFICATON_WORK_PROFILE_HEADER:Ljava/lang/String; = "security_setting_lock_screen_notif_work_header"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mOwnerInfoPreferenceController:Lcom/android/settings/security/OwnerInfoPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    new-instance v0, Lcom/android/settings/security/LockscreenDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/security/LockscreenDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/security/LockscreenDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    invoke-virtual {p0}, Lcom/android/settings/security/LockscreenDashboardFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    .line 82
    .local v1, "lifecycle":Lcom/android/settingslib/core/lifecycle/Lifecycle;
    new-instance v2, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;

    const-string v3, "security_setting_lock_screen_notif"

    const-string v4, "security_setting_lock_screen_notif_work_header"

    const-string v5, "security_setting_lock_screen_notif_work"

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .local v2, "notificationController":Lcom/android/settings/notification/LockScreenNotificationPreferenceController;
    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 88
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v3, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    const-string v4, "security_lockscreen_add_users_when_locked"

    invoke-direct {v3, p1, v4, v1}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v3, Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-direct {v3, p1, p0, v1}, Lcom/android/settings/security/OwnerInfoPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v3, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mOwnerInfoPreferenceController:Lcom/android/settings/security/OwnerInfoPreferenceController;

    .line 93
    iget-object v3, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mOwnerInfoPreferenceController:Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v3, Lcom/android/settings/security/LockdownButtonPreferenceController;

    invoke-direct {v3, p1}, Lcom/android/settings/security/LockdownButtonPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 75
    const v0, 0x7f1206ca

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 65
    const-string v0, "LockscreenDashboardFragment"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 60
    const/16 v0, 0x372

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 70
    const v0, 0x7f150098

    return v0
.end method

.method public onOwnerInfoUpdated()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mOwnerInfoPreferenceController:Lcom/android/settings/security/OwnerInfoPreferenceController;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mOwnerInfoPreferenceController:Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->updateSummary()V

    .line 104
    :cond_0
    return-void
.end method
