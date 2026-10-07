.class Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;
.super Ljava/util/TimerTask;
.source "QQAssetAnimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/QQAssetAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTimerTask"
.end annotation


# instance fields
.field private animIdStyle:I

.field final synthetic this$0:Lcom/android/settings/widget/QQAssetAnimView;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/QQAssetAnimView;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/widget/QQAssetAnimView;
    .param p2, "bNormalState"    # I

    .line 552
    iput-object p1, p0, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;->this$0:Lcom/android/settings/widget/QQAssetAnimView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 542
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;->animIdStyle:I

    .line 553
    iput p2, p0, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;->animIdStyle:I

    .line 554
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;

    .line 539
    iget v0, p0, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;->animIdStyle:I

    return v0
.end method


# virtual methods
.method public getAssetFullPath(I)Ljava/lang/String;
    .locals 6
    .param p1, "picnow"    # I

    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, "fullPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;->this$0:Lcom/android/settings/widget/QQAssetAnimView;

    invoke-static {v1}, Lcom/android/settings/widget/QQAssetAnimView;->access$100(Lcom/android/settings/widget/QQAssetAnimView;)[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;->animIdStyle:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;->animIdStyle:I

    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;->this$0:Lcom/android/settings/widget/QQAssetAnimView;

    invoke-static {v2}, Lcom/android/settings/widget/QQAssetAnimView;->access$100(Lcom/android/settings/widget/QQAssetAnimView;)[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;->this$0:Lcom/android/settings/widget/QQAssetAnimView;

    invoke-static {v2}, Lcom/android/settings/widget/QQAssetAnimView;->access$100(Lcom/android/settings/widget/QQAssetAnimView;)[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;->animIdStyle:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->resPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%05d.png"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    :cond_0
    return-object v0
.end method

.method public run()V
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/android/settings/widget/QQAssetAnimView$MyTimerTask;->this$0:Lcom/android/settings/widget/QQAssetAnimView;

    invoke-virtual {v0}, Lcom/android/settings/widget/QQAssetAnimView;->postInvalidate()V

    .line 559
    return-void
.end method
