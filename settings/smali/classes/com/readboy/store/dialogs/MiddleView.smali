.class public Lcom/readboy/store/dialogs/MiddleView;
.super Landroid/widget/LinearLayout;
.source "MiddleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/readboy/store/dialogs/MiddleView$OnLayoutCallBack;
    }
.end annotation


# instance fields
.field height:I

.field private onLayoutCallBack:Lcom/readboy/store/dialogs/MiddleView$OnLayoutCallBack;

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 38
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 40
    invoke-virtual {p0}, Lcom/readboy/store/dialogs/MiddleView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 41
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 42
    .local v1, "width":I
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 44
    .local v2, "height":I
    iget v3, p0, Lcom/readboy/store/dialogs/MiddleView;->width:I

    if-ne v3, v1, :cond_0

    iget v3, p0, Lcom/readboy/store/dialogs/MiddleView;->height:I

    if-ne v3, v2, :cond_0

    .line 46
    return-void

    .line 48
    :cond_0
    iput v1, p0, Lcom/readboy/store/dialogs/MiddleView;->width:I

    .line 49
    iput v2, p0, Lcom/readboy/store/dialogs/MiddleView;->height:I

    .line 50
    const-string v3, "dddd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v3, p0, Lcom/readboy/store/dialogs/MiddleView;->onLayoutCallBack:Lcom/readboy/store/dialogs/MiddleView$OnLayoutCallBack;

    if-eqz v3, :cond_1

    .line 52
    iget-object v3, p0, Lcom/readboy/store/dialogs/MiddleView;->onLayoutCallBack:Lcom/readboy/store/dialogs/MiddleView$OnLayoutCallBack;

    invoke-interface {v3, v1}, Lcom/readboy/store/dialogs/MiddleView$OnLayoutCallBack;->callBack(I)V

    .line 55
    :cond_1
    return-void
.end method

.method public setOnLayoutCallBack(Lcom/readboy/store/dialogs/MiddleView$OnLayoutCallBack;)V
    .locals 0
    .param p1, "onLayoutCallBack"    # Lcom/readboy/store/dialogs/MiddleView$OnLayoutCallBack;

    .line 58
    iput-object p1, p0, Lcom/readboy/store/dialogs/MiddleView;->onLayoutCallBack:Lcom/readboy/store/dialogs/MiddleView$OnLayoutCallBack;

    .line 59
    return-void
.end method
