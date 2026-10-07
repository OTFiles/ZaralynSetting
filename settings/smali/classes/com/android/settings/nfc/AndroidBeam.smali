.class public Lcom/android/settings/nfc/AndroidBeam;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "AndroidBeam.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mBeamDisallowedByBase:Z

.field private mBeamDisallowedByOnlyAdmin:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 132
    const/16 v0, 0x45

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 88
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar(Ljava/lang/String;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 91
    iget-boolean v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    const v2, 0x7f1200f5

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->hide(Ljava/lang/String;)V

    goto :goto_1

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v3, p0, Lcom/android/settings/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 95
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 96
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v3, p0, Lcom/android/settings/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    xor-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 97
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/settings/widget/SwitchBar;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    .line 101
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/AndroidBeam;->setHasOptionsMenu(Z)V

    .line 55
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 59
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 60
    const v2, 0x7f12069f

    invoke-static {v0, p1, v2, v1}, Lcom/android/settingslib/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 67
    nop

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "no_outgoing_beam"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 67
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 69
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 70
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "no_outgoing_beam"

    .line 71
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 70
    invoke-static {v2, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    .line 72
    iget-boolean v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 73
    new-instance v2, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    const-string v3, "no_outgoing_beam"

    .line 74
    invoke-virtual {v2, v3, v0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 75
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    .line 76
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 78
    :cond_0
    const v2, 0x7f0d0032

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mView:Landroid/view/View;

    .line 79
    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mView:Landroid/view/View;

    return-object v2
.end method

.method public onDestroyView()V
    .locals 2

    .line 105
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onDestroyView()V

    .line 106
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->hide(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "desiredState"    # Z

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 119
    if-eqz p2, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v0

    goto :goto_0

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v0

    .line 124
    :goto_0
    if-eqz v0, :cond_1

    .line 125
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 128
    return-void
.end method
