.class public Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;
.super Ljava/lang/Object;
.source "QQAssetAnimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/QQAssetAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QQAssetInfo"
.end annotation


# instance fields
.field public loopNow:I

.field public loopTims:I

.field public mySize:Landroid/graphics/Point;

.field public resCount:I

.field public resNow:I

.field public resPath:Ljava/lang/String;

.field public resStart:I

.field public resWait:I


# direct methods
.method private constructor <init>(ILjava/lang/String;IIILandroid/graphics/Point;)V
    .locals 3
    .param p1, "lptms"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "count"    # I
    .param p4, "wait"    # I
    .param p5, "now"    # I
    .param p6, "size"    # Landroid/graphics/Point;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->resPath:Ljava/lang/String;

    .line 67
    iput p3, p0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->resCount:I

    .line 68
    iput p4, p0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->resWait:I

    .line 69
    iput p5, p0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->resNow:I

    .line 70
    iput p5, p0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->resStart:I

    .line 71
    iput p1, p0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->loopTims:I

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->loopNow:I

    .line 73
    if-eqz p6, :cond_0

    iget v0, p6, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_0

    iget v0, p6, Landroid/graphics/Point;->y:I

    if-lez v0, :cond_0

    .line 74
    new-instance v0, Landroid/graphics/Point;

    iget v1, p6, Landroid/graphics/Point;->x:I

    iget v2, p6, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->mySize:Landroid/graphics/Point;

    goto :goto_0

    .line 76
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;->mySize:Landroid/graphics/Point;

    .line 78
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "wait"    # I
    .param p4, "now"    # I
    .param p5, "lptms"    # I
    .param p6, "size"    # Landroid/graphics/Point;

    .line 59
    if-nez p5, :cond_0

    const/4 v0, -0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, p5

    :goto_0
    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(ILjava/lang/String;IIILandroid/graphics/Point;)V

    .line 60
    return-void
.end method
