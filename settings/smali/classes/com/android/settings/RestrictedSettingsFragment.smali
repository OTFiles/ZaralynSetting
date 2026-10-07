.class public abstract Lcom/android/settings/RestrictedSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "RestrictedSettingsFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final REQUEST_PIN_CHALLENGE:I = 0x3015


# instance fields
.field mActionDisabledDialog:Landroid/app/AlertDialog;

.field private mChallengeRequested:Z

.field private mChallengeSucceeded:Z

.field private mEmptyTextView:Landroid/widget/TextView;

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mIsAdminUser:Z

.field private mOnlyAvailableForAdmins:Z

.field private final mRestrictionKey:Ljava/lang/String;

.field private mRestrictionsManager:Landroid/content/RestrictionsManager;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "restrictionKey"    # Ljava/lang/String;

    .line 99
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mOnlyAvailableForAdmins:Z

    .line 80
    new-instance v0, Lcom/android/settings/RestrictedSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/RestrictedSettingsFragment$1;-><init>(Lcom/android/settings/RestrictedSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    iput-object p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/RestrictedSettingsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RestrictedSettingsFragment;

    .line 55
    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/RestrictedSettingsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RestrictedSettingsFragment;
    .param p1, "x1"    # Z

    .line 55
    iput-boolean p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/RestrictedSettingsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RestrictedSettingsFragment;
    .param p1, "x1"    # Z

    .line 55
    iput-boolean p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    return p1
.end method

.method private ensurePin()V
    .locals 5

    .line 172
    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    .line 173
    invoke-virtual {v0}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    invoke-virtual {v0}, Landroid/content/RestrictionsManager;->createLocalApprovalIntent()Landroid/content/Intent;

    move-result-object v0

    .line 175
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 176
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    .line 177
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    .line 178
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 179
    .local v1, "request":Landroid/os/PersistableBundle;
    const-string v2, "android.request.mesg"

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120bdc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v2, "android.content.extra.REQUEST_BUNDLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 182
    const/16 v2, 0x3015

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/RestrictedSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 185
    .end local v0
    .end local v1
    :cond_0
    return-void
.end method

.method public static synthetic lambda$onDataSetChanged$0(Lcom/android/settings/RestrictedSettingsFragment;Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "__"    # Landroid/content/DialogInterface;

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public getEmptyTextView()Landroid/widget/TextView;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mEmptyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRestrictionEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    .line 222
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 221
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 223
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget v0, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v0
.end method

.method protected hasChallengeSucceeded()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected initEmptyTextView()Landroid/widget/TextView;
    .locals 2

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 217
    .local v0, "emptyView":Landroid/widget/TextView;
    return-object v0
.end method

.method protected isRestrictedAndNotProviderProtected()Z
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "restrict_if_overridable"

    iget-object v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    .line 196
    invoke-virtual {v0}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    nop

    .line 195
    :cond_1
    return v1

    .line 193
    :cond_2
    :goto_0
    return v1
.end method

.method protected isUiRestricted()Z
    .locals 1

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isRestrictedAndNotProviderProtected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->hasChallengeSucceeded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mIsAdminUser:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mOnlyAvailableForAdmins:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected isUiRestrictedByOnlyAdmin()Z
    .locals 3

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    .line 264
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 263
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mIsAdminUser:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mOnlyAvailableForAdmins:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 123
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->initEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mEmptyTextView:Landroid/widget/TextView;

    .line 125
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 154
    const/16 v0, 0x3015

    if-ne p1, v0, :cond_2

    .line 155
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    .line 157
    iput-boolean v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    .line 158
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mActionDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mActionDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mActionDisabledDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mActionDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 163
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    .line 165
    :cond_1
    :goto_0
    return-void

    .line 168
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 169
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const-string v0, "restrictions"

    invoke-virtual {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionsManager;

    iput-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    .line 108
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    .line 109
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mIsAdminUser:Z

    .line 111
    if-eqz p1, :cond_0

    .line 112
    const-string v0, "chsc"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    .line 113
    const-string v0, "chrq"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    .line 116
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "offFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    return-void
.end method

.method protected onDataSetChanged()V
    .locals 3

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->highlightPreferenceIfNeeded()V

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mActionDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mActionDisabledDialog:Landroid/app/AlertDialog;

    .line 237
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getRestrictionEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 239
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    new-instance v1, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    .line 240
    invoke-virtual {v1, v2, v0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/-$$Lambda$RestrictedSettingsFragment$LUdTuWQX3d8kcdKiPapl2FlA0-c;

    invoke-direct {v2, p0}, Lcom/android/settings/-$$Lambda$RestrictedSettingsFragment$LUdTuWQX3d8kcdKiPapl2FlA0-c;-><init>(Lcom/android/settings/RestrictedSettingsFragment;)V

    .line 241
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 242
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mActionDisabledDialog:Landroid/app/AlertDialog;

    .line 243
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->setEmptyView(Landroid/view/View;)V

    .line 244
    .end local v0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mEmptyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;->setEmptyView(Landroid/view/View;)V

    .line 247
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    .line 248
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 149
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 150
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 139
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 141
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;->shouldBeProviderProtected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/android/settings/RestrictedSettingsFragment;->ensurePin()V

    .line 144
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 129
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "chrq"

    iget-boolean v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    const-string v0, "chsc"

    iget-boolean v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    :cond_0
    return-void
.end method

.method public setIfOnlyAvailableForAdmins(Z)V
    .locals 0
    .param p1, "onlyForAdmins"    # Z

    .line 251
    iput-boolean p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mOnlyAvailableForAdmins:Z

    .line 252
    return-void
.end method

.method protected shouldBeProviderProtected(Ljava/lang/String;)Z
    .locals 4
    .param p1, "restrictionKey"    # Ljava/lang/String;

    .line 207
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 208
    return v0

    .line 210
    :cond_0
    const-string v1, "restrict_if_overridable"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    .line 211
    invoke-virtual {v1, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    .line 212
    .local v1, "restricted":Z
    :goto_1
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    invoke-virtual {v3}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    nop

    :cond_3
    return v0
.end method
