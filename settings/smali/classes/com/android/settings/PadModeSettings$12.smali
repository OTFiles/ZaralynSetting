.class Lcom/android/settings/PadModeSettings$12;
.super Ljava/lang/Object;
.source "PadModeSettings.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PadModeSettings;->setClickZoomEffect(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cancelled:Z

.field rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1955
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/PadModeSettings$12;->rect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 1959
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1964
    :pswitch_0    # 0x2
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$12;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1965
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$12;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1967
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$12;->rect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1968
    invoke-static {p1, v2}, Lcom/android/settings/PadModeSettings;->scaleTo(Landroid/view/View;F)V

    .line 1969
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/PadModeSettings$12;->cancelled:Z

    goto :goto_0

    .line 1974
    :pswitch_1    # 0x3 0x1
    iget-boolean v0, p0, Lcom/android/settings/PadModeSettings$12;->cancelled:Z

    if-nez v0, :cond_1

    .line 1975
    invoke-static {p1, v2}, Lcom/android/settings/PadModeSettings;->scaleTo(Landroid/view/View;F)V

    goto :goto_0

    .line 1977
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/PadModeSettings$12;->cancelled:Z

    goto :goto_0

    .line 1961
    :pswitch_2    # 0x0
    const v0, 0x3f733333    # 0.95f

    invoke-static {p1, v0}, Lcom/android/settings/PadModeSettings;->scaleTo(Landroid/view/View;F)V

    .line 1962
    nop

    .line 1982
    :cond_2
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
        :pswitch_1    # 0x3
    .end packed-switch
.end method
