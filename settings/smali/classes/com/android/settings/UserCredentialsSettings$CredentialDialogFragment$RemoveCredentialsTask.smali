.class Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;
.super Landroid/os/AsyncTask;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveCredentialsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/android/settings/UserCredentialsSettings$Credential;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/android/settings/UserCredentialsSettings$Credential;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private targetFragment:Landroid/app/Fragment;

.field final synthetic this$0:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;Landroid/content/Context;Landroid/app/Fragment;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "targetFragment"    # Landroid/app/Fragment;

    .line 177
    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->this$0:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 178
    iput-object p2, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->context:Landroid/content/Context;

    .line 179
    iput-object p3, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->targetFragment:Landroid/app/Fragment;

    .line 180
    return-void
.end method

.method private removeGrantsAndDelete(Lcom/android/settings/UserCredentialsSettings$Credential;)V
    .locals 4
    .param p1, "credential"    # Lcom/android/settings/UserCredentialsSettings$Credential;

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->this$0:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0

    .line 202
    .local v0, "conn":Landroid/security/KeyChain$KeyChainConnection;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    .line 201
    nop

    .line 205
    :try_start_1
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v1

    .line 206
    .local v1, "keyChain":Landroid/security/IKeyChainService;
    iget-object v2, p1, Lcom/android/settings/UserCredentialsSettings$Credential;->alias:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/security/IKeyChainService;->removeKeyPair(Ljava/lang/String;)Z

    .line 210
    .end local v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 211
    goto :goto_1

    .line 210
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "CredentialDialogFragment"

    const-string v3, "Removing credentials"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 212
    :goto_1
    return-void

    .line 210
    :goto_2
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v1

    .line 199
    .end local v0
    :catch_1
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "CredentialDialogFragment"

    const-string v2, "Connecting to KeyChain"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 173
    check-cast p1, [Lcom/android/settings/UserCredentialsSettings$Credential;

    invoke-virtual {p0, p1}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->doInBackground([Lcom/android/settings/UserCredentialsSettings$Credential;)[Lcom/android/settings/UserCredentialsSettings$Credential;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lcom/android/settings/UserCredentialsSettings$Credential;)[Lcom/android/settings/UserCredentialsSettings$Credential;
    .locals 4
    .param p1, "credentials"    # [Lcom/android/settings/UserCredentialsSettings$Credential;

    .line 184
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 185
    .local v2, "credential":Lcom/android/settings/UserCredentialsSettings$Credential;
    invoke-virtual {v2}, Lcom/android/settings/UserCredentialsSettings$Credential;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    invoke-direct {p0, v2}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->removeGrantsAndDelete(Lcom/android/settings/UserCredentialsSettings$Credential;)V

    .line 187
    nop

    .line 184
    .end local v2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .restart local v2
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented for wifi certificates. This should not be reachable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    .end local v2
    :cond_1
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 173
    check-cast p1, [Lcom/android/settings/UserCredentialsSettings$Credential;

    invoke-virtual {p0, p1}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->onPostExecute([Lcom/android/settings/UserCredentialsSettings$Credential;)V

    return-void
.end method

.method protected varargs onPostExecute([Lcom/android/settings/UserCredentialsSettings$Credential;)V
    .locals 5
    .param p1, "credentials"    # [Lcom/android/settings/UserCredentialsSettings$Credential;

    .line 216
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->targetFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/settings/UserCredentialsSettings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->targetFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->targetFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settings/UserCredentialsSettings;

    .line 218
    .local v0, "target":Lcom/android/settings/UserCredentialsSettings;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 219
    .local v3, "credential":Lcom/android/settings/UserCredentialsSettings$Credential;
    iget-object v4, v3, Lcom/android/settings/UserCredentialsSettings$Credential;->alias:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/settings/UserCredentialsSettings;->announceRemoval(Ljava/lang/String;)V

    .line 218
    .end local v3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/UserCredentialsSettings;->refreshItems()V

    .line 223
    .end local v0
    :cond_1
    return-void
.end method
