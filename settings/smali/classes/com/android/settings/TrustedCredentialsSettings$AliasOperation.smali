.class Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;
.super Landroid/os/AsyncTask;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AliasOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .param p2, "certHolder"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 999
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1000
    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 1001
    invoke-static {p1, p0}, Lcom/android/settings/TrustedCredentialsSettings;->access$3702(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;)Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    .line 1002
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Lcom/android/settings/TrustedCredentialsSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/TrustedCredentialsSettings;
    .param p2, "x1"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    .param p3, "x2"    # Lcom/android/settings/TrustedCredentialsSettings$1;

    .line 996
    invoke-direct {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .line 1007
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$2700(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1008
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings;->access$2700(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    iget v2, v2, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/KeyChain$KeyChainConnection;

    .line 1010
    .local v1, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    .line 1011
    .local v2, "service":Landroid/security/IKeyChainService;
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-static {v3}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$2100(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1012
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-static {v3}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$3800(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    .line 1013
    .local v3, "bytes":[B
    invoke-interface {v2, v3}, Landroid/security/IKeyChainService;->installCaCertificate([B)Ljava/lang/String;

    .line 1014
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 1016
    .end local v3
    :cond_0
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-static {v3}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$3300(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 1018
    .end local v1
    .end local v2
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 1019
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 1021
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TrustedCredentialsSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while toggling alias "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-static {v3}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$3300(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1022
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 996
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "ok"    # Ljava/lang/Boolean;

    .line 1028
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1029
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$3900(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$2000(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$2100(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$2102(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Z)Z

    goto :goto_0

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$4000(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-virtual {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->remove(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    .line 1034
    :goto_0
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$4000(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 1037
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$4000(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->load()V

    .line 1039
    :goto_1
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings;->access$3702(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;)Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    .line 1040
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 996
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
