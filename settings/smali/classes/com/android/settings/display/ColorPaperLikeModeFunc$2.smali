.class Lcom/android/settings/display/ColorPaperLikeModeFunc$2;
.super Landroid/os/Handler;
.source "ColorPaperLikeModeFunc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/ColorPaperLikeModeFunc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/ColorPaperLikeModeFunc;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ColorPaperLikeModeFunc;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/display/ColorPaperLikeModeFunc;

    .line 67
    iput-object p1, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc$2;->this$0:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 69
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc$2;->this$0:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    invoke-static {v0}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->access$300(Lcom/android/settings/display/ColorPaperLikeModeFunc;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc$2;->this$0:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    iget-object v1, v1, Lcom/android/settings/display/ColorPaperLikeModeFunc;->colorinterface:Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->connect(Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;)I

    move-result v0

    .line 70
    .local v0, "retVal":I
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 71
    iget-object v2, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc$2;->this$0:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    invoke-static {v2}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->access$408(Lcom/android/settings/display/ColorPaperLikeModeFunc;)I

    .line 72
    iget-object v2, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc$2;->this$0:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    invoke-static {v2}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->access$400(Lcom/android/settings/display/ColorPaperLikeModeFunc;)I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 73
    iget-object v2, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc$2;->this$0:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    invoke-static {v2, v1}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->access$502(Lcom/android/settings/display/ColorPaperLikeModeFunc;Z)Z

    .line 74
    const-string v1, "PaperLikeModeFunc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc$2;->this$0:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    invoke-static {v3}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->access$000(Lcom/android/settings/display/ColorPaperLikeModeFunc;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Connection failed!!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void

    .line 77
    :cond_0
    const-string v2, "PaperLikeModeFunc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc$2;->this$0:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    invoke-static {v4}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->access$000(Lcom/android/settings/display/ColorPaperLikeModeFunc;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Connection failed!!! retrytimes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc$2;->this$0:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    invoke-static {v4}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->access$400(Lcom/android/settings/display/ColorPaperLikeModeFunc;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v2, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc$2;->this$0:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    invoke-static {v2}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->access$600(Lcom/android/settings/display/ColorPaperLikeModeFunc;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    iget-object v2, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc$2;->this$0:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    invoke-static {v2}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->access$600(Lcom/android/settings/display/ColorPaperLikeModeFunc;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc$2;->this$0:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    invoke-static {v2, v1}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->access$502(Lcom/android/settings/display/ColorPaperLikeModeFunc;Z)Z

    .line 82
    iget-object v1, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc$2;->this$0:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->access$702(Lcom/android/settings/display/ColorPaperLikeModeFunc;Z)Z

    .line 83
    const-string v1, "PaperLikeModeFunc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc$2;->this$0:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    invoke-static {v3}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->access$000(Lcom/android/settings/display/ColorPaperLikeModeFunc;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  colorManagerConnect success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v1, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc$2;->this$0:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    invoke-static {v1}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->access$800(Lcom/android/settings/display/ColorPaperLikeModeFunc;)Lcom/android/settings/display/ColorPaperLikeModeFunc$WarmModeListen;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc$2;->this$0:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    invoke-static {v1}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->access$800(Lcom/android/settings/display/ColorPaperLikeModeFunc;)Lcom/android/settings/display/ColorPaperLikeModeFunc$WarmModeListen;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/display/ColorPaperLikeModeFunc$WarmModeListen;->refreshIcon()V

    .line 88
    :cond_2
    :goto_0
    return-void
.end method
