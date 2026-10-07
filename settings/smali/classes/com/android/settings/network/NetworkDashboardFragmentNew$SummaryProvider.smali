.class Lcom/android/settings/network/NetworkDashboardFragmentNew$SummaryProvider;
.super Ljava/lang/Object;
.source "NetworkDashboardFragmentNew.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/NetworkDashboardFragmentNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMobileNetworkPreferenceController:Lcom/android/settings/network/MobileNetworkPreferenceController;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

.field private final mTetherPreferenceController:Lcom/android/settings/network/TetherPreferenceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .line 156
    new-instance v0, Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-direct {v0, p1}, Lcom/android/settings/network/MobileNetworkPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/settings/network/TetherPreferenceController;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/settings/network/TetherPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/network/NetworkDashboardFragmentNew$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settings/network/MobileNetworkPreferenceController;Lcom/android/settings/network/TetherPreferenceController;)V

    .line 159
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settings/network/MobileNetworkPreferenceController;Lcom/android/settings/network/TetherPreferenceController;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;
    .param p3, "mobileNetworkPreferenceController"    # Lcom/android/settings/network/MobileNetworkPreferenceController;
    .param p4, "tetherPreferenceController"    # Lcom/android/settings/network/TetherPreferenceController;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/android/settings/network/NetworkDashboardFragmentNew$SummaryProvider;->mContext:Landroid/content/Context;

    .line 166
    iput-object p2, p0, Lcom/android/settings/network/NetworkDashboardFragmentNew$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 167
    iput-object p3, p0, Lcom/android/settings/network/NetworkDashboardFragmentNew$SummaryProvider;->mMobileNetworkPreferenceController:Lcom/android/settings/network/MobileNetworkPreferenceController;

    .line 168
    iput-object p4, p0, Lcom/android/settings/network/NetworkDashboardFragmentNew$SummaryProvider;->mTetherPreferenceController:Lcom/android/settings/network/TetherPreferenceController;

    .line 169
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 8
    .param p1, "listening"    # Z

    .line 174
    if-eqz p1, :cond_2

    .line 175
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/NetworkDashboardFragmentNew$SummaryProvider;->mContext:Landroid/content/Context;

    const v2, 0x7f121146

    .line 176
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "summary":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/network/NetworkDashboardFragmentNew$SummaryProvider;->mMobileNetworkPreferenceController:Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/MobileNetworkPreferenceController;->isAvailable()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const v5, 0x7f120730

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/android/settings/network/NetworkDashboardFragmentNew$SummaryProvider;->mContext:Landroid/content/Context;

    const v6, 0x7f1208f6

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "mobileSettingSummary":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/network/NetworkDashboardFragmentNew$SummaryProvider;->mContext:Landroid/content/Context;

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v0, v7, v3

    aput-object v1, v7, v2

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .end local v1
    :cond_0
    iget-object v1, p0, Lcom/android/settings/network/NetworkDashboardFragmentNew$SummaryProvider;->mContext:Landroid/content/Context;

    const v6, 0x7f1208f4

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "dataUsageSettingSummary":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/network/NetworkDashboardFragmentNew$SummaryProvider;->mContext:Landroid/content/Context;

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v0, v7, v3

    aput-object v1, v7, v2

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 187
    iget-object v6, p0, Lcom/android/settings/network/NetworkDashboardFragmentNew$SummaryProvider;->mTetherPreferenceController:Lcom/android/settings/network/TetherPreferenceController;

    invoke-virtual {v6}, Lcom/android/settings/network/TetherPreferenceController;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 188
    iget-object v6, p0, Lcom/android/settings/network/NetworkDashboardFragmentNew$SummaryProvider;->mContext:Landroid/content/Context;

    const v7, 0x7f1208f5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 190
    .local v6, "hotspotSettingSummary":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/network/NetworkDashboardFragmentNew$SummaryProvider;->mContext:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    aput-object v6, v4, v2

    invoke-virtual {v7, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .end local v6
    :cond_1
    iget-object v2, p0, Lcom/android/settings/network/NetworkDashboardFragmentNew$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v2, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 195
    .end local v0
    .end local v1
    :cond_2
    return-void
.end method
