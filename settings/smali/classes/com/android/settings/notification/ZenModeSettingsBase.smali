.class public abstract Lcom/android/settings/notification/ZenModeSettingsBase;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "ZenModeSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z


# instance fields
.field protected mBackend:Lcom/android/settings/notification/ZenModeBackend;

.field protected mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mSettingsObserver:Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;

.field protected mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const-string v0, "ZenModeSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/ZenModeSettingsBase;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    const-string v0, "no_adjust_volume"

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance v0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;-><init>(Lcom/android/settings/notification/ZenModeSettingsBase;Lcom/android/settings/notification/ZenModeSettingsBase$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mSettingsObserver:Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;

    .line 47
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/notification/ZenModeSettingsBase;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeSettingsBase;

    .line 31
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/ZenModeSettingsBase;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeSettingsBase;

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/ZenModeSettingsBase;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeSettingsBase;

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/ZenModeSettingsBase;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeSettingsBase;

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/ZenModeSettingsBase;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeSettingsBase;
    .param p1, "x1"    # Z

    .line 31
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->updateZenMode(Z)V

    return-void
.end method

.method private updateZenMode(Z)V
    .locals 4
    .param p1, "fireChanged"    # Z

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    iget v2, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mZenMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 85
    .local v0, "zenMode":I
    iget v1, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mZenMode:I

    if-ne v0, v1, :cond_0

    return-void

    .line 86
    :cond_0
    iput v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mZenMode:I

    .line 87
    sget-boolean v1, Lcom/android/settings/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateZenMode mZenMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mZenMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "ZenModeSettings"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/ZenModeBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/notification/ZenModeSettingsBase;->updateZenMode(Z)V

    .line 60
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 79
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onPause()V

    .line 80
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mSettingsObserver:Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->unregister()V

    .line 81
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 64
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/notification/ZenModeSettingsBase;->updateZenMode(Z)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mSettingsObserver:Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->register()V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 70
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->finish()V

    .line 75
    :cond_1
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 0

    .line 43
    return-void
.end method
