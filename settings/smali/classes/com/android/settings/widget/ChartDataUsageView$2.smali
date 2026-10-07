.class Lcom/android/settings/widget/ChartDataUsageView$2;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/settings/widget/ChartSweepView$OnSweepListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/ChartDataUsageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/widget/ChartDataUsageView;

    .line 294
    iput-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/android/settings/widget/ChartSweepView;Z)V
    .locals 2
    .param p1, "sweep"    # Lcom/android/settings/widget/ChartSweepView;
    .param p2, "sweepDone"    # Z

    .line 297
    if-eqz p2, :cond_1

    .line 298
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->access$300(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 299
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$100(Lcom/android/settings/widget/ChartDataUsageView;)V

    .line 301
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$400(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$500(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$500(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;->onWarningChanged()V

    goto :goto_0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$600(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$500(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$500(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;->onLimitChanged()V

    goto :goto_0

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/settings/widget/ChartDataUsageView;->access$200(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;Z)V

    .line 310
    :cond_2
    :goto_0
    return-void
.end method

.method public requestEdit(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 1
    .param p1, "sweep"    # Lcom/android/settings/widget/ChartSweepView;

    .line 314
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$400(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$500(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$500(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;->requestWarningEdit()V

    goto :goto_0

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$600(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$500(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$500(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;->requestLimitEdit()V

    .line 319
    :cond_1
    :goto_0
    return-void
.end method
