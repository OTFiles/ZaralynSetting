.class Lcom/android/settings/dashboard/DashboardAdapter$1;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/DashboardAdapter;

    .line 77
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardAdapter;->access$100(Lcom/android/settings/dashboard/DashboardAdapter;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v1}, Lcom/android/settings/dashboard/DashboardAdapter;->access$000(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    invoke-interface {v0, v1, v2}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->openTileIntent(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;)V

    .line 82
    return-void
.end method
