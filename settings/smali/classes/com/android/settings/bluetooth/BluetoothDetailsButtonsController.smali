.class public Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "BluetoothDetailsButtonsController.java"


# instance fields
.field private mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

.field private mConnectButtonInitialized:Z

.field private mIsConnected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p3, "device"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p4, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 42
    invoke-virtual {p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mIsConnected:Z

    .line 43
    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 55
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->onForgetButtonPressed()V

    return-void
.end method

.method public static synthetic lambda$refresh$1(Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect()V

    return-void
.end method

.method public static synthetic lambda$refresh$2(Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    return-void
.end method

.method private onForgetButtonPressed()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 47
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;

    move-result-object v0

    .line 48
    .local v0, "fragment":Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroid/support/v14/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ForgetBluetoothDevice"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 88
    const-string v0, "action_buttons"

    return-object v0
.end method

.method protected init(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ActionButtonPreference;

    .line 54
    const v1, 0x7f120281

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsButtonsController$10mSfoM1rAEvasn6gc-o1iWQgIA;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsButtonsController$10mSfoM1rAEvasn6gc-o1iWQgIA;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;)V

    .line 55
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    .line 56
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    .line 58
    return-void
.end method

.method protected refresh()V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 64
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mIsConnected:Z

    .line 65
    .local v0, "previouslyConnected":Z
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mIsConnected:Z

    .line 66
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mIsConnected:Z

    if-eqz v1, :cond_1

    .line 67
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mConnectButtonInitialized:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_3

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    const v3, 0x7f12027e

    .line 69
    invoke-virtual {v1, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v1

    new-instance v3, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsButtonsController$AbsgPn9bfqFfvfi3BgeGPbSW3X0;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsButtonsController$AbsgPn9bfqFfvfi3BgeGPbSW3X0;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;)V

    .line 70
    invoke-virtual {v1, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v1

    const/4 v3, 0x0

    .line 71
    invoke-virtual {v1, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 72
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mConnectButtonInitialized:Z

    goto :goto_0

    .line 75
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mConnectButtonInitialized:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_3

    .line 76
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    const v3, 0x7f12027c

    .line 77
    invoke-virtual {v1, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v1

    new-instance v3, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsButtonsController$eZ36ezumIpXzpP7dOOnqn-gI5Uk;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsButtonsController$eZ36ezumIpXzpP7dOOnqn-gI5Uk;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;)V

    .line 78
    invoke-virtual {v1, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v1

    .line 80
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 81
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mConnectButtonInitialized:Z

    .line 84
    :cond_3
    :goto_0
    return-void
.end method
