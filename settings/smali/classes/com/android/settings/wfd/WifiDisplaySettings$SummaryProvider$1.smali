.class Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider$1;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;

    .line 767
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider$1;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 780
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider$1;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->access$1600(Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;)V

    .line 781
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 790
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider$1;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->access$1600(Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;)V

    .line 791
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 785
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider$1;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->access$1600(Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;)V

    .line 786
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 770
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider$1;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->access$1600(Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;)V

    .line 771
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 775
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider$1;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->access$1600(Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;)V

    .line 776
    return-void
.end method
