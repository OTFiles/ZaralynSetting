.class Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;
.super Landroid/os/AsyncTask;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings$AdapterData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AliasLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Landroid/util/SparseArray<",
        "Ljava/util/List<",
        "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field final synthetic this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;


# direct methods
.method public constructor <init>(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)V
    .locals 6

    .line 677
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 678
    iget-object v0, p1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContext:Landroid/content/Context;

    .line 679
    iget-object v0, p1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$2400(Lcom/android/settings/TrustedCredentialsSettings;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 680
    iget-object v0, p1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 681
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 682
    .local v2, "profile":Landroid/os/UserHandle;
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 683
    .end local v2
    goto :goto_0

    .line 684
    :cond_0
    return-void
.end method

.method private isUserTabAndTrustAllCertMode()Z
    .locals 2

    .line 791
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$3100(Lcom/android/settings/TrustedCredentialsSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldSkipProfile(Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 687
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    .line 688
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 687
    :goto_1
    return v0
.end method

.method private showTrustAllCaDialogIfNeeded()V
    .locals 7

    .line 796
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->isUserTabAndTrustAllCertMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 797
    return-void

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v1, v1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings;->access$3200(Lcom/android/settings/TrustedCredentialsSettings;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 800
    .local v0, "certHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/TrustedCredentialsSettings$CertHolder;>;"
    if-nez v0, :cond_1

    .line 801
    return-void

    .line 804
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 805
    .local v1, "unapprovedUserCertHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/TrustedCredentialsSettings$CertHolder;>;"
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 807
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 808
    .local v4, "cert":Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$3300(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v6, v6, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v6}, Lcom/android/settings/TrustedCredentialsSettings;->access$3200(Lcom/android/settings/TrustedCredentialsSettings;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/app/admin/DevicePolicyManager;->isCaCertApproved(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 809
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    .end local v4
    :cond_2
    goto :goto_0

    .line 813
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 814
    const-string v3, "TrustedCredentialsSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no cert is pending approval for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v5, v5, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v5}, Lcom/android/settings/TrustedCredentialsSettings;->access$3200(Lcom/android/settings/TrustedCredentialsSettings;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return-void

    .line 817
    :cond_4
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v3, v3, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    const/4 v4, 0x1

    invoke-static {v3, v1, v4}, Lcom/android/settings/TrustedCredentialsSettings;->access$3400(Lcom/android/settings/TrustedCredentialsSettings;Ljava/util/List;Z)V

    .line 818
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/SparseArray;
    .locals 30
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 699
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v2, v0

    .line 702
    .local v2, "certHoldersByProfile":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/settings/TrustedCredentialsSettings$CertHolder;>;>;"
    :try_start_0
    iget-object v0, v1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$2700(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v3

    monitor-enter v3

    .line 703
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 704
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 707
    .local v4, "n":I
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 709
    .local v5, "aliasesByProfileId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v6, 0x0

    .line 710
    .local v6, "max":I
    const/4 v7, 0x0

    .line 711
    .local v7, "progress":I
    move v9, v6

    const/4 v6, 0x0

    .local v6, "i":I
    .local v9, "max":I
    :goto_0
    if-ge v6, v4, :cond_2

    .line 712
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserHandle;

    .line 713
    .local v10, "profile":Landroid/os/UserHandle;
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 714
    .local v11, "profileId":I
    invoke-direct {v1, v10}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->shouldSkipProfile(Landroid/os/UserHandle;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 715
    goto :goto_1

    .line 717
    :cond_0
    iget-object v12, v1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContext:Landroid/content/Context;

    invoke-static {v12, v10}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v12

    .line 720
    .local v12, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    iget-object v13, v1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v13, v13, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v13}, Lcom/android/settings/TrustedCredentialsSettings;->access$2700(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 721
    invoke-virtual {v12}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v13

    .line 722
    .local v13, "service":Landroid/security/IKeyChainService;
    iget-object v14, v1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v14}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v14

    invoke-static {v14, v13}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$2800(Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;)Ljava/util/List;

    move-result-object v14

    .line 723
    .local v14, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->isCancelled()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 724
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    monitor-exit v3

    return-object v8

    .line 726
    :cond_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    add-int/2addr v9, v15

    .line 727
    invoke-virtual {v5, v11, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 711
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 729
    .end local v6
    :cond_2
    const/4 v6, 0x0

    .restart local v6
    :goto_2
    if-ge v6, v4, :cond_7

    .line 730
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserHandle;

    .line 731
    .restart local v10
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 732
    .restart local v11
    invoke-virtual {v5, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    move-object v15, v12

    .line 733
    .local v15, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->isCancelled()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 734
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    monitor-exit v3

    return-object v8

    .line 736
    :cond_3
    iget-object v12, v1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v12, v12, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v12}, Lcom/android/settings/TrustedCredentialsSettings;->access$2700(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/security/KeyChain$KeyChainConnection;

    move-object v14, v12

    .line 738
    .local v14, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-direct {v1, v10}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->shouldSkipProfile(Landroid/os/UserHandle;)Z

    move-result v12

    if-nez v12, :cond_6

    if-eqz v15, :cond_6

    if-nez v14, :cond_4

    .line 740
    move-object/from16 v23, v0

    move/from16 v24, v4

    move-object/from16 v27, v5

    move-object/from16 v29, v10

    move-object/from16 v22, v14

    move-object v5, v15

    goto/16 :goto_4

    .line 743
    :cond_4
    invoke-virtual {v14}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v12

    move-object v13, v12

    .line 744
    .restart local v13
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 745
    .local v12, "certHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/TrustedCredentialsSettings$CertHolder;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v20, v16

    .line 746
    .local v20, "aliasMax":I
    move/from16 v21, v7

    const/4 v7, 0x0

    .local v7, "j":I
    .local v21, "progress":I
    :goto_3
    move/from16 v8, v20

    if-ge v7, v8, :cond_5

    .line 747
    .end local v20
    .local v8, "aliasMax":I
    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v22, v16

    .line 748
    .local v22, "alias":Ljava/lang/String;
    move-object/from16 v23, v0

    const/4 v0, 0x1

    .end local v0
    .local v23, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    move/from16 v24, v4

    move-object/from16 v4, v22

    invoke-interface {v13, v4, v0}, Landroid/security/IKeyChainService;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v16

    .end local v22
    .local v4, "alias":Ljava/lang/String;
    .local v24, "n":I
    move-object/from16 v25, v16

    .line 750
    .local v25, "encodedCertificate":[B
    move-object/from16 v0, v25

    invoke-static {v0}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v17

    .line 751
    .end local v25
    .local v0, "encodedCertificate":[B
    .local v17, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v26, v0

    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .end local v0
    .local v26, "encodedCertificate":[B
    move-object/from16 v27, v5

    iget-object v5, v1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    .end local v5
    .local v27, "aliasesByProfileId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v5}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$2900(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    move-result-object v5

    move/from16 v28, v8

    iget-object v8, v1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    .line 752
    .end local v8
    .local v28, "aliasMax":I
    invoke-static {v8}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v8

    const/16 v19, 0x0

    move-object/from16 v29, v10

    move-object v10, v12

    move-object v12, v0

    .end local v12
    .local v10, "certHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/TrustedCredentialsSettings$CertHolder;>;"
    .local v29, "profile":Landroid/os/UserHandle;
    move-object/from16 v20, v13

    .end local v13
    .local v20, "service":Landroid/security/IKeyChainService;
    move-object/from16 v22, v14

    move-object v14, v5

    .end local v14
    .local v22, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    move-object v5, v15

    move-object v15, v8

    .end local v15
    .local v5, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v16, v4

    move/from16 v18, v11

    invoke-direct/range {v12 .. v19}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;-><init>(Landroid/security/IKeyChainService;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;Lcom/android/settings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;ILcom/android/settings/TrustedCredentialsSettings$1;)V

    .line 751
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 753
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    add-int/lit8 v8, v21, 0x1

    .end local v21
    .local v8, "progress":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v0, v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v0, v13

    invoke-virtual {v1, v0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->publishProgress([Ljava/lang/Object;)V

    .line 746
    .end local v4
    .end local v17
    .end local v26
    add-int/lit8 v7, v7, 0x1

    move-object v15, v5

    move/from16 v21, v8

    move-object v12, v10

    move-object/from16 v13, v20

    move-object/from16 v14, v22

    move-object/from16 v0, v23

    move/from16 v4, v24

    move-object/from16 v5, v27

    move/from16 v20, v28

    move-object/from16 v10, v29

    goto :goto_3

    .line 755
    .end local v7
    .end local v20
    .end local v22
    .end local v23
    .end local v24
    .end local v27
    .end local v28
    .end local v29
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .local v4, "n":I
    .local v5, "aliasesByProfileId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Ljava/lang/String;>;>;"
    .local v8, "aliasMax":I
    .local v10, "profile":Landroid/os/UserHandle;
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v15
    .restart local v21
    :cond_5
    move-object/from16 v23, v0

    move/from16 v24, v4

    move-object/from16 v27, v5

    move/from16 v28, v8

    move-object/from16 v29, v10

    move-object v10, v12

    move-object/from16 v20, v13

    move-object/from16 v22, v14

    move-object v5, v15

    .end local v0
    .end local v4
    .end local v8
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    .local v5, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v10, "certHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/TrustedCredentialsSettings$CertHolder;>;"
    .restart local v20
    .restart local v22
    .restart local v23
    .restart local v24
    .restart local v27
    .restart local v28
    .restart local v29
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 756
    invoke-virtual {v2, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 729
    .end local v5
    .end local v10
    .end local v11
    .end local v20
    .end local v22
    .end local v28
    .end local v29
    move/from16 v7, v21

    const/4 v4, 0x0

    goto :goto_5

    .line 740
    .end local v21
    .end local v23
    .end local v24
    .end local v27
    .restart local v0
    .restart local v4
    .local v5, "aliasesByProfileId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Ljava/lang/String;>;>;"
    .local v7, "progress":I
    .local v10, "profile":Landroid/os/UserHandle;
    .restart local v11
    .restart local v14
    .restart local v15
    :cond_6
    move-object/from16 v23, v0

    move/from16 v24, v4

    move-object/from16 v27, v5

    move-object/from16 v29, v10

    move-object/from16 v22, v14

    move-object v5, v15

    .end local v0
    .end local v4
    .end local v10
    .end local v14
    .end local v15
    .local v5, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22
    .restart local v23
    .restart local v24
    .restart local v27
    .restart local v29
    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 741
    nop

    .line 729
    .end local v5
    .end local v11
    .end local v22
    .end local v29
    :goto_5
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v23

    move/from16 v4, v24

    move-object/from16 v5, v27

    goto/16 :goto_2

    .line 758
    .end local v6
    .end local v23
    .end local v24
    .end local v27
    .restart local v0
    .restart local v4
    .local v5, "aliasesByProfileId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_7
    move-object/from16 v23, v0

    move/from16 v24, v4

    move-object/from16 v27, v5

    .end local v0
    .end local v4
    .end local v5
    .restart local v23
    .restart local v24
    .restart local v27
    monitor-exit v3

    return-object v2

    .line 759
    .end local v7
    .end local v9
    .end local v23
    .end local v24
    .end local v27
    :catchall_0
    move-exception v0

    monitor-exit v3

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 763
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 764
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "TrustedCredentialsSettings"

    const-string v4, "InterruptedException while loading aliases."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 765
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    return-object v3

    .line 760
    .end local v0
    :catch_1
    move-exception v0

    .line 761
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "TrustedCredentialsSettings"

    const-string v4, "Remote exception while loading aliases."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 762
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 672
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->doInBackground([Ljava/lang/Void;)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
            ">;>;)V"
        }
    .end annotation

    .line 777
    .local p1, "certHolders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/settings/TrustedCredentialsSettings$CertHolder;>;>;"
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 778
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 779
    .local v0, "n":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 780
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v3}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 779
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 782
    .end local v2
    :cond_0
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v2}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$2900(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->notifyDataSetChanged()V

    .line 783
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 784
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 785
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 786
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v1, v1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings;->access$2400(Lcom/android/settings/TrustedCredentialsSettings;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 787
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->showTrustAllCaDialogIfNeeded()V

    .line 788
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 672
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->onPostExecute(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 692
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$2500(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 693
    .local v0, "content":Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$2600(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    .line 694
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$500(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContentView:Landroid/view/View;

    .line 695
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 696
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContentView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 697
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .param p1, "progressAndMax"    # [Ljava/lang/Integer;

    .line 769
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 770
    .local v0, "progress":I
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 771
    .local v1, "max":I
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 772
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 774
    :cond_0
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 775
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 672
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
