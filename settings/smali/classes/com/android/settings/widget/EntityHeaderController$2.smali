.class Lcom/android/settings/widget/EntityHeaderController$2;
.super Ljava/lang/Object;
.source "EntityHeaderController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/EntityHeaderController;->bindButton(Landroid/widget/ImageButton;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/EntityHeaderController;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/EntityHeaderController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/widget/EntityHeaderController;

    .line 356
    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController$2;->this$0:Lcom/android/settings/widget/EntityHeaderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 359
    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController$2;->this$0:Lcom/android/settings/widget/EntityHeaderController;

    invoke-static {v0}, Lcom/android/settings/widget/EntityHeaderController;->access$400(Lcom/android/settings/widget/EntityHeaderController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController$2;->this$0:Lcom/android/settings/widget/EntityHeaderController;

    .line 360
    invoke-static {v1}, Lcom/android/settings/widget/EntityHeaderController;->access$400(Lcom/android/settings/widget/EntityHeaderController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/widget/EntityHeaderController$2;->this$0:Lcom/android/settings/widget/EntityHeaderController;

    invoke-static {v2}, Lcom/android/settings/widget/EntityHeaderController;->access$300(Lcom/android/settings/widget/EntityHeaderController;)I

    move-result v2

    const/16 v3, 0x3f8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->actionWithSource(Landroid/content/Context;II)V

    .line 362
    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController$2;->this$0:Lcom/android/settings/widget/EntityHeaderController;

    invoke-static {v0}, Lcom/android/settings/widget/EntityHeaderController;->access$200(Lcom/android/settings/widget/EntityHeaderController;)Landroid/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController$2;->this$0:Lcom/android/settings/widget/EntityHeaderController;

    invoke-static {v1}, Lcom/android/settings/widget/EntityHeaderController;->access$500(Lcom/android/settings/widget/EntityHeaderController;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 363
    return-void
.end method
