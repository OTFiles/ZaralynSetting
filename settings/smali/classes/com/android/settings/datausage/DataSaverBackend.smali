.class public Lcom/android/settings/datausage/DataSaverBackend;
.super Ljava/lang/Object;
.source "DataSaverBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/DataSaverBackend$Listener;
    }
.end annotation


# instance fields
.field private mBlacklistInitialized:Z

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/datausage/DataSaverBackend$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private final mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mUidPolicies:Landroid/util/SparseIntArray;

.field private mWhitelistInitialized:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    .line 189
    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend$1;-><init>(Lcom/android/settings/datausage/DataSaverBackend;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 49
    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 51
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datausage/DataSaverBackend;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/datausage/DataSaverBackend;
    .param p1, "x1"    # Z

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataSaverBackend;->handleRestrictBackgroundChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/datausage/DataSaverBackend;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/datausage/DataSaverBackend;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/DataSaverBackend;->handleUidPoliciesChanged(II)V

    return-void
.end method

.method private handleBlacklistChanged(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "isBlacklisted"    # Z

    .line 158
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/DataSaverBackend$Listener;

    invoke-interface {v1, p1, p2}, Lcom/android/settings/datausage/DataSaverBackend$Listener;->onBlacklistStatusChanged(IZ)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    .end local v0
    :cond_0
    return-void
.end method

.method private handleRestrictBackgroundChanged(Z)V
    .locals 2
    .param p1, "isDataSaving"    # Z

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/DataSaverBackend$Listener;

    invoke-interface {v1, p1}, Lcom/android/settings/datausage/DataSaverBackend$Listener;->onDataSaverChanged(Z)V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    .end local v0
    :cond_0
    return-void
.end method

.method private handleUidPoliciesChanged(II)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "newPolicy"    # I

    .line 164
    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadWhitelist()V

    .line 165
    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadBlacklist()V

    .line 167
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 168
    .local v0, "oldPolicy":I
    if-nez p2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 174
    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    .line 175
    .local v4, "wasWhitelisted":Z
    :goto_1
    if-ne v0, v3, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v1

    .line 176
    .local v5, "wasBlacklisted":Z
    :goto_2
    if-ne p2, v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    move v2, v1

    .line 177
    .local v2, "isWhitelisted":Z
    :goto_3
    if-ne p2, v3, :cond_4

    move v1, v3

    nop

    .line 179
    .local v1, "isBlacklisted":Z
    :cond_4
    if-eq v4, v2, :cond_5

    .line 180
    invoke-direct {p0, p1, v2}, Lcom/android/settings/datausage/DataSaverBackend;->handleWhitelistChanged(IZ)V

    .line 183
    :cond_5
    if-eq v5, v1, :cond_6

    .line 184
    invoke-direct {p0, p1, v1}, Lcom/android/settings/datausage/DataSaverBackend;->handleBlacklistChanged(IZ)V

    .line 187
    :cond_6
    return-void
.end method

.method private handleWhitelistChanged(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "isWhitelisted"    # Z

    .line 152
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/DataSaverBackend$Listener;

    invoke-interface {v1, p1, p2}, Lcom/android/settings/datausage/DataSaverBackend$Listener;->onWhitelistStatusChanged(IZ)V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    .end local v0
    :cond_0
    return-void
.end method

.method private loadBlacklist()V
    .locals 6

    .line 138
    iget-boolean v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mBlacklistInitialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 140
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 139
    .end local v4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mBlacklistInitialized:Z

    .line 143
    return-void
.end method

.method private loadWhitelist()V
    .locals 6

    .line 110
    iget-boolean v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mWhitelistInitialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 113
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 112
    .end local v4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mWhitelistInitialized:Z

    .line 116
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/settings/datausage/DataSaverBackend$Listener;

    .line 55
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/settings/datausage/DataSaverBackend$Listener;->onDataSaverChanged(Z)V

    .line 60
    return-void
.end method

.method public getWhitelistedCount()I
    .locals 4

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "count":I
    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadWhitelist()V

    .line 101
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 103
    add-int/lit8 v0, v0, 0x1

    .line 101
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v1
    :cond_1
    return v0
.end method

.method public isBlacklisted(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 133
    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadBlacklist()V

    .line 134
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1
.end method

.method public isDataSaverEnabled()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    return v0
.end method

.method public isWhitelisted(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 94
    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadWhitelist()V

    .line 95
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public refreshBlacklist()V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadBlacklist()V

    .line 120
    return-void
.end method

.method public refreshWhitelist()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadWhitelist()V

    .line 81
    return-void
.end method

.method public remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/settings/datausage/DataSaverBackend$Listener;

    .line 63
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 67
    :cond_0
    return-void
.end method

.method public setDataSaverEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 74
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    .line 76
    nop

    .line 75
    const/16 v2, 0x18a

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 77
    return-void
.end method

.method public setIsBlacklisted(ILjava/lang/String;Z)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "blacklisted"    # Z

    .line 123
    move v0, p3

    .line 124
    .local v0, "policy":I
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1, p1, v0}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 125
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 126
    if-eqz p3, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    const/16 v3, 0x18c

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/util/Pair;

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 130
    :cond_0
    return-void
.end method

.method public setIsWhitelisted(ILjava/lang/String;Z)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "whitelisted"    # Z

    .line 84
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v0

    .line 85
    .local v1, "policy":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, p1, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 86
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 87
    if-eqz p3, :cond_1

    .line 88
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    const/16 v4, 0x18b

    new-array v0, v0, [Landroid/util/Pair;

    invoke-virtual {v2, v3, v4, p2, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 91
    :cond_1
    return-void
.end method
