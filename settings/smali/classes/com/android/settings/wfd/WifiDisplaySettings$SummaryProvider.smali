.class Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRouter:Landroid/media/MediaRouter;

.field private final mRouterCallback:Landroid/media/MediaRouter$Callback;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .line 794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider$1;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    .line 795
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 796
    iput-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 797
    const-string v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mRouter:Landroid/media/MediaRouter;

    .line 798
    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;

    .line 762
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->updateSummary()V

    return-void
.end method

.method private updateSummary()V
    .locals 6

    .line 811
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v1, 0x7f12054d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, "summary":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v1}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v1

    .line 814
    .local v1, "routeCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 815
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v3, v2}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v3

    .line 816
    .local v3, "route":Landroid/media/MediaRouter$RouteInfo;
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 817
    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v4

    if-nez v4, :cond_0

    .line 818
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v5, 0x7f1210ab

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 819
    goto :goto_1

    .line 814
    .end local v3
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 822
    .end local v2
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v2, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 823
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .line 802
    if-eqz p1, :cond_0

    .line 803
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mRouter:Landroid/media/MediaRouter;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    .line 804
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->updateSummary()V

    goto :goto_0

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 808
    :goto_0
    return-void
.end method
