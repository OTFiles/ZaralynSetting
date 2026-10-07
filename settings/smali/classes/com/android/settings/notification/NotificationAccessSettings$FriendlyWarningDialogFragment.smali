.class public Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "NotificationAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationAccessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FriendlyWarningDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCreateDialog$0(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "parent"    # Lcom/android/settings/notification/NotificationAccessSettings;
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "id"    # I

    .line 161
    invoke-static {p0, p1}, Lcom/android/settings/notification/NotificationAccessSettings;->access$000(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "id"    # I

    .line 165
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 144
    const/16 v0, 0x228

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 150
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "l"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "label":Ljava/lang/String;
    const-string v2, "c"

    .line 152
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 153
    .local v2, "cn":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/settings/notification/NotificationAccessSettings;

    .line 155
    .local v3, "parent":Lcom/android/settings/notification/NotificationAccessSettings;
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const v7, 0x7f12096f

    invoke-virtual {v4, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "summary":Ljava/lang/String;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 159
    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$FriendlyWarningDialogFragment$ND5PkKgvmxdEIdAr9gHIhLyAwTU;

    invoke-direct {v6, v3, v2}, Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$FriendlyWarningDialogFragment$ND5PkKgvmxdEIdAr9gHIhLyAwTU;-><init>(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V

    .line 160
    const v7, 0x7f12096e

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    sget-object v6, Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$FriendlyWarningDialogFragment$dxECkfkY-zLrkSsUm1OLKJMeIiE;->INSTANCE:Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$FriendlyWarningDialogFragment$dxECkfkY-zLrkSsUm1OLKJMeIiE;

    .line 162
    const v7, 0x7f12096d

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 166
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 157
    return-object v5
.end method

.method public setServiceInfo(Landroid/content/ComponentName;Ljava/lang/String;Landroid/app/Fragment;)Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;
    .locals 3
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "target"    # Landroid/app/Fragment;

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "c"

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "l"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 138
    const/4 v1, 0x0

    invoke-virtual {p0, p3, v1}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 139
    return-object p0
.end method
