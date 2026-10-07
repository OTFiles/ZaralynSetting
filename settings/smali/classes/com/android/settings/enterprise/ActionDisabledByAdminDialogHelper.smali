.class public Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;
.super Ljava/lang/Object;
.source "ActionDisabledByAdminDialogHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDialogView:Landroid/view/ViewGroup;

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mRestriction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    .line 59
    return-void
.end method

.method private initializeDialogViews(Landroid/view/View;Landroid/content/ComponentName;ILjava/lang/String;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "restriction"    # Ljava/lang/String;

    .line 93
    if-nez p2, :cond_0

    .line 94
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/android/settingslib/RestrictedLockUtils;->isAdminInCurrentUserOrProfile(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    .line 97
    invoke-static {v0, p3}, Lcom/android/settingslib/RestrictedLockUtils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    .line 101
    invoke-static {v0}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    .line 102
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 103
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-static {v0, v1, v2, p3}, Lcom/android/settings/Utils;->getBadgedIcon(Landroid/util/IconDrawableFactory;Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 105
    .local v0, "badgedIcon":Landroid/graphics/drawable/Drawable;
    const v1, 0x7f0a003f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .end local v0
    goto :goto_1

    .line 98
    :cond_2
    :goto_0
    const/4 p2, 0x0

    .line 108
    :goto_1
    invoke-virtual {p0, p1, p4}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->setAdminSupportTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v1, p2, p3}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->setAdminSupportDetails(Landroid/app/Activity;Landroid/view/View;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 110
    return-void
.end method

.method public static synthetic lambda$prepareDialogBuilder$0(Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 75
    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->showAdminPolicies(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/app/Activity;)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 77
    return-void
.end method


# virtual methods
.method public prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/app/AlertDialog$Builder;
    .locals 6
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "enforcedAdmin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 63
    iput-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 64
    iput-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    .line 66
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0d0030

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mDialogView:Landroid/view/ViewGroup;

    .line 69
    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mDialogView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v3, v3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget v4, v4, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    iget-object v5, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->initializeDialogViews(Landroid/view/View;Landroid/content/ComponentName;ILjava/lang/String;)V

    .line 71
    nop

    .line 72
    const v1, 0x7f1209ba

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/enterprise/-$$Lambda$ActionDisabledByAdminDialogHelper$1vfAOqcacTgM-c2XJLB5Z1-4lQ4;

    invoke-direct {v2, p0}, Lcom/android/settings/enterprise/-$$Lambda$ActionDisabledByAdminDialogHelper$1vfAOqcacTgM-c2XJLB5Z1-4lQ4;-><init>(Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;)V

    .line 73
    const v3, 0x7f120798

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mDialogView:Landroid/view/ViewGroup;

    .line 78
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 71
    return-object v1
.end method

.method setAdminSupportDetails(Landroid/app/Activity;Landroid/view/View;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "enforcedAdmin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 153
    if-eqz p3, :cond_6

    iget-object v0, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    goto :goto_2

    .line 156
    :cond_0
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 158
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-static {p1, v1}, Lcom/android/settingslib/RestrictedLockUtils;->isAdminInCurrentUserOrProfile(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 159
    invoke-static {p1, v1}, Lcom/android/settingslib/RestrictedLockUtils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 163
    :cond_1
    iget v1, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    const/16 v2, -0x2710

    if-ne v1, v2, :cond_2

    .line 164
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 166
    :cond_2
    const/4 v1, 0x0

    .line 167
    .local v1, "supportMessage":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    invoke-static {v2, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 168
    iget-object v2, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    iget v3, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 171
    :cond_3
    if-eqz v1, :cond_5

    .line 172
    const v2, 0x7f0a0041

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 173
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v1
    .end local v2
    goto :goto_1

    .line 161
    :cond_4
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 176
    :cond_5
    :goto_1
    return-void

    .line 154
    .end local v0
    :cond_6
    :goto_2
    return-void
.end method

.method setAdminSupportTitle(Landroid/view/View;Ljava/lang/String;)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "restriction"    # Ljava/lang/String;

    .line 114
    const v0, 0x7f0a003e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    .local v0, "titleView":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 116
    return-void

    .line 118
    :cond_0
    const v1, 0x7f120541

    if-nez p2, :cond_1

    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 120
    return-void

    .line 122
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0    # 0x7f4c17cc
    const-string v3, "no_adjust_volume"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1    # 0x7a5410be
    const-string v3, "policy_mandatory_backups"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_2    # 0x74422d80
    const-string v3, "no_outgoing_calls"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3    # 0x546cf0fd
    const-string v3, "policy_suspend_packages"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_4    # 0x24f9a257
    const-string v3, "policy_disable_screen_capture"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5    # -0x379078f7
    const-string v3, "policy_disable_camera"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_6    # -0x3e01ce25
    const-string v3, "no_sms"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    :cond_2
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 142
    :pswitch_0    # 0x6
    const v1, 0x7f120547

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 143
    goto :goto_1

    .line 139
    :pswitch_1    # 0x5
    const v1, 0x7f120548

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 140
    goto :goto_1

    .line 136
    :pswitch_2    # 0x4
    const v1, 0x7f120545

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 137
    goto :goto_1

    .line 133
    :pswitch_3    # 0x3
    const v1, 0x7f120543

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 134
    goto :goto_1

    .line 130
    :pswitch_4    # 0x2
    const v1, 0x7f120546

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 131
    goto :goto_1

    .line 127
    :pswitch_5    # 0x1
    const v1, 0x7f120544

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 128
    goto :goto_1

    .line 124
    :pswitch_6    # 0x0
    const v1, 0x7f120542

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 125
    nop

    .line 148
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3e01ce25 -> :sswitch_6
        -0x379078f7 -> :sswitch_5
        0x24f9a257 -> :sswitch_4
        0x546cf0fd -> :sswitch_3
        0x74422d80 -> :sswitch_2
        0x7a5410be -> :sswitch_1
        0x7f4c17cc -> :sswitch_0

    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6    # 0x0
        :pswitch_5    # 0x1
        :pswitch_4    # 0x2
        :pswitch_3    # 0x3
        :pswitch_2    # 0x4
        :pswitch_1    # 0x5
        :pswitch_0    # 0x6
    .end packed-switch
.end method

.method showAdminPolicies(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/app/Activity;)V
    .locals 3
    .param p1, "enforcedAdmin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 180
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 181
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 182
    const-class v1, Lcom/android/settings/DeviceAdminAdd;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 183
    const-string v1, "android.app.extra.DEVICE_ADMIN"

    iget-object v2, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 185
    const-string v1, "android.app.extra.CALLED_FROM_SUPPORT_DIALOG"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 187
    new-instance v1, Landroid/os/UserHandle;

    iget v2, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, v0, v1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 190
    :cond_0
    const-class v1, Lcom/android/settings/Settings$DeviceAdminSettingsActivity;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 191
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 194
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 196
    :goto_0
    return-void
.end method

.method public updateDialog(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 4
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "admin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 82
    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, p2}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    return-void

    .line 85
    :cond_0
    iput-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 86
    iput-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mDialogView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v1, v1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget v2, v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    iget-object v3, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->initializeDialogViews(Landroid/view/View;Landroid/content/ComponentName;ILjava/lang/String;)V

    .line 89
    return-void
.end method
