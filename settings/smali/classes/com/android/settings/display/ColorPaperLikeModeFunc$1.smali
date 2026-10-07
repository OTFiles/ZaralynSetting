.class Lcom/android/settings/display/ColorPaperLikeModeFunc$1;
.super Ljava/lang/Object;
.source "ColorPaperLikeModeFunc.java"

# interfaces
.implements Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/ColorPaperLikeModeFunc;-><init>(Landroid/content/Context;Lcom/android/settings/display/ColorPaperLikeModeFunc$WarmModeListen;)V
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

    .line 34
    iput-object p1, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc$1;->this$0:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 4

    .line 37
    const-string v0, "PaperLikeModeFunc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc$1;->this$0:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    invoke-static {v2}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->access$000(Lcom/android/settings/display/ColorPaperLikeModeFunc;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  setupApplication"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc$1;->this$0:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->access$102(Lcom/android/settings/display/ColorPaperLikeModeFunc;I)I

    .line 39
    iget-object v0, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc$1;->this$0:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    invoke-static {v0}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->access$200(Lcom/android/settings/display/ColorPaperLikeModeFunc;)Z

    move-result v0

    .line 40
    .local v0, "isSuccess":Z
    if-nez v0, :cond_0

    .line 41
    const-string v1, "PaperLikeModeFunc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/display/ColorPaperLikeModeFunc$1;->this$0:Lcom/android/settings/display/ColorPaperLikeModeFunc;

    invoke-static {v3}, Lcom/android/settings/display/ColorPaperLikeModeFunc;->access$000(Lcom/android/settings/display/ColorPaperLikeModeFunc;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  setupApplication error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    return-void
.end method
