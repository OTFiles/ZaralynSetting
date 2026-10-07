.class public Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CredentialDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;Lcom/android/settings/UserCredentialsSettings$Credential;)V
    .locals 4
    .param p0, "target"    # Landroid/app/Fragment;
    .param p1, "item"    # Lcom/android/settings/UserCredentialsSettings$Credential;

    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "credential"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 112
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "CredentialDialogFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 113
    new-instance v1, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;-><init>()V

    .line 114
    .local v1, "frag":Landroid/app/DialogFragment;
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 115
    invoke-virtual {v1, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "CredentialDialogFragment"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 118
    .end local v1
    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 164
    const/16 v0, 0x215

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "credential"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UserCredentialsSettings$Credential;

    .line 124
    .local v0, "item":Lcom/android/settings/UserCredentialsSettings$Credential;
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 125
    const/4 v2, 0x0

    const v3, 0x7f0d0223

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 126
    .local v1, "root":Landroid/view/View;
    const v3, 0x7f0a0108

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 127
    .local v3, "infoContainer":Landroid/view/ViewGroup;
    const v4, 0x7f0d0222

    const/4 v5, 0x1

    invoke-static {v0, v4, v2, v3, v5}, Lcom/android/settings/UserCredentialsSettings;->getCredentialView(Lcom/android/settings/UserCredentialsSettings$Credential;ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 129
    .local v4, "contentView":Landroid/view/View;
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 131
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 133
    const v6, 0x7f120f93

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 134
    const v6, 0x7f120589

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 136
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const-string v5, "no_config_credentials"

    .line 137
    .local v5, "restriction":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 138
    .local v6, "myUserId":I
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "no_config_credentials"

    invoke-static {v7, v8, v6}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 139
    new-instance v7, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;

    invoke-direct {v7, p0, v6, v0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;-><init>(Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;ILcom/android/settings/UserCredentialsSettings$Credential;)V

    .line 153
    .local v7, "listener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v0}, Lcom/android/settings/UserCredentialsSettings$Credential;->isSystem()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 156
    const v8, 0x7f120ea1

    invoke-virtual {v2, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 159
    .end local v7
    :cond_0
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7
.end method
