.class public Lcom/android/settings/accounts/AddAccountSettings;
.super Landroid/app/Activity;
.source "AddAccountSettings.java"


# instance fields
.field private mAddAccountCalled:Z

.field private final mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    new-instance v0, Lcom/android/settings/accounts/AddAccountSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/AddAccountSettings$1;-><init>(Lcom/android/settings/accounts/AddAccountSettings;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accounts/AddAccountSettings;

    .line 61
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/accounts/AddAccountSettings;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accounts/AddAccountSettings;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .line 61
    iput-object p1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accounts/AddAccountSettings;

    .line 61
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method private addAccount(Ljava/lang/String;)V
    .locals 11
    .param p1, "accountType"    # Ljava/lang/String;

    .line 232
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 242
    .local v0, "addAccountOptions":Landroid/os/Bundle;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v10, v1

    .line 243
    .local v10, "identityIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "SHOULDN\'T RESOLVE!"

    const-string v3, "SHOULDN\'T RESOLVE!"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 244
    const-string v1, "SHOULDN\'T RESOLVE!"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v1, "SHOULDN\'T RESOLVE!"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const/4 v1, 0x0

    invoke-static {p0, v1, v10, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    .line 248
    const-string v1, "pendingIntent"

    iget-object v2, p0, Lcom/android/settings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 249
    const-string v1, "hasMultipleUsers"

    invoke-static {p0}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v7, p0, Lcom/android/settings/accounts/AddAccountSettings;->mCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v9, p0, Lcom/android/settings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object v5, v0

    invoke-virtual/range {v1 .. v9}, Landroid/accounts/AccountManager;->addAccountAsUser(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    .line 259
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    .line 260
    return-void
.end method

.method private requestChooseAccount()V
    .locals 5

    .line 216
    nop

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "authorities":[Ljava/lang/String;
    nop

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "account_types"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "accountTypes":[Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/Settings$ChooseAccountActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 222
    const-string v3, "authorities"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    :cond_0
    if-eqz v1, :cond_1

    .line 225
    const-string v3, "account_types"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    :cond_1
    const-string v3, "android.intent.extra.USER"

    iget-object v4, p0, Lcom/android/settings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 228
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/accounts/AddAccountSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 229
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 177
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 179
    :pswitch_0    # 0x3
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/android/settings/accounts/AddAccountSettings;->requestChooseAccount()V

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    .line 184
    goto :goto_0

    .line 198
    :pswitch_1    # 0x2
    invoke-virtual {p0, p2}, Lcom/android/settings/accounts/AddAccountSettings;->setResult(I)V

    .line 199
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    .line 186
    :pswitch_2    # 0x1
    if-nez p2, :cond_3

    .line 187
    if-eqz p3, :cond_2

    .line 188
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0, p3, v0}, Lcom/android/settings/accounts/AddAccountSettings;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 190
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/settings/accounts/AddAccountSettings;->setResult(I)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    .line 192
    return-void

    .line 195
    :cond_3
    const-string v0, "selected_account"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AddAccountSettings;->addAccount(Ljava/lang/String;)V

    .line 196
    nop

    .line 206
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    if-eqz p1, :cond_0

    .line 137
    const-string v0, "AddAccountCalled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    .line 138
    const-string v0, "AddAccountSettings"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AddAccountSettings"

    const-string v1, "restored"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AddAccountSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 142
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 142
    invoke-static {v1, v0, v2, v3}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    .line 144
    const-string v1, "no_modify_accounts"

    iget-object v2, p0, Lcom/android/settings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    const v1, 0x7f120f8b

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    .line 149
    return-void

    .line 151
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    if-eqz v1, :cond_2

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    .line 154
    return-void

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    .line 158
    return-void

    .line 160
    :cond_3
    iget-object v1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 161
    invoke-direct {p0}, Lcom/android/settings/accounts/AddAccountSettings;->requestChooseAccount()V

    goto :goto_0

    .line 165
    :cond_4
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 166
    .local v1, "helper":Lcom/android/settings/password/ChooseLockSettingsHelper;
    const/4 v2, 0x3

    const v3, 0x7f120f09

    .line 167
    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/AddAccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    .line 169
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 166
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v2

    if-nez v2, :cond_5

    .line 170
    invoke-direct {p0}, Lcom/android/settings/accounts/AddAccountSettings;->requestChooseAccount()V

    .line 173
    .end local v1
    :cond_5
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 210
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 211
    const-string v0, "AddAccountCalled"

    iget-boolean v1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 212
    const-string v0, "AddAccountSettings"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AddAccountSettings"

    const-string v1, "saved"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    return-void
.end method
