.class public Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;
.super Ljava/lang/Object;
.source "AutomaticStorageManagerSwitchBarController.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDaysToRetainPreference:Landroid/support/v7/preference/Preference;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mMetrics:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/support/v7/preference/Preference;Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/settings/widget/SwitchBar;
    .param p3, "metrics"    # Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .param p4, "daysToRetainPreference"    # Landroid/support/v7/preference/Preference;
    .param p5, "fragmentManager"    # Landroid/app/FragmentManager;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mContext:Landroid/content/Context;

    .line 51
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/SwitchBar;

    iput-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 52
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iput-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mMetrics:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 53
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    iput-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mDaysToRetainPreference:Landroid/support/v7/preference/Preference;

    .line 54
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/FragmentManager;

    iput-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 56
    invoke-direct {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->initializeCheckedStatus()V

    .line 57
    return-void
.end method

.method private initializeCheckedStatus()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->isStorageManagerEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 62
    return-void
.end method

.method private maybeShowWarning()V
    .locals 3

    .line 85
    const-string v0, "ro.storage_manager.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    return-void

    .line 88
    :cond_0
    invoke-static {}, Lcom/android/settings/deletionhelper/ActivationWarningFragment;->newInstance()Lcom/android/settings/deletionhelper/ActivationWarningFragment;

    move-result-object v0

    .line 89
    .local v0, "fragment":Lcom/android/settings/deletionhelper/ActivationWarningFragment;
    iget-object v1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "ActivationWarningFragment"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deletionhelper/ActivationWarningFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 90
    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .line 66
    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mMetrics:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mContext:Landroid/content/Context;

    const/16 v2, 0x1e9

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mDaysToRetainPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "automatic_storage_manager_enabled"

    .line 71
    nop

    .line 68
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 73
    if-eqz p2, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->maybeShowWarning()V

    .line 76
    :cond_0
    return-void
.end method

.method public tearDown()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 81
    return-void
.end method
