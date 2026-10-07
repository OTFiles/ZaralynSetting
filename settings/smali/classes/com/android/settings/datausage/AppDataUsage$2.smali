.class Lcom/android/settings/datausage/AppDataUsage$2;
.super Ljava/lang/Object;
.source "AppDataUsage.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/AppDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/settingslib/net/ChartData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/AppDataUsage;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/AppDataUsage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/datausage/AppDataUsage;

    .line 391
    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Lcom/android/settingslib/net/ChartData;",
            ">;"
        }
    .end annotation

    .line 394
    new-instance v0, Lcom/android/settingslib/net/ChartDataLoader;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v1}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v2}, Lcom/android/settings/datausage/AppDataUsage;->access$400(Lcom/android/settings/datausage/AppDataUsage;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settingslib/net/ChartDataLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/settingslib/net/ChartData;)V
    .locals 3
    .param p2, "data"    # Lcom/android/settingslib/net/ChartData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/settingslib/net/ChartData;",
            ">;",
            "Lcom/android/settingslib/net/ChartData;",
            ")V"
        }
    .end annotation

    .line 399
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/settingslib/net/ChartData;>;"
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v0, p2}, Lcom/android/settings/datausage/AppDataUsage;->access$502(Lcom/android/settings/datausage/AppDataUsage;Lcom/android/settingslib/net/ChartData;)Lcom/android/settingslib/net/ChartData;

    .line 400
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings/datausage/AppDataUsage;->access$700(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/CycleAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v1}, Lcom/android/settings/datausage/AppDataUsage;->access$600(Lcom/android/settings/datausage/AppDataUsage;)Landroid/net/NetworkPolicy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v2}, Lcom/android/settings/datausage/AppDataUsage;->access$500(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/net/ChartData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/datausage/CycleAdapter;->updateCycleList(Landroid/net/NetworkPolicy;Lcom/android/settingslib/net/ChartData;)Z

    .line 401
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings/datausage/AppDataUsage;->access$300(Lcom/android/settings/datausage/AppDataUsage;)V

    .line 402
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 391
    check-cast p2, Lcom/android/settingslib/net/ChartData;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/datausage/AppDataUsage$2;->onLoadFinished(Landroid/content/Loader;Lcom/android/settingslib/net/ChartData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/settingslib/net/ChartData;",
            ">;)V"
        }
    .end annotation

    .line 406
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/settingslib/net/ChartData;>;"
    return-void
.end method
