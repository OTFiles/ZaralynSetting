.class Lcom/android/settings/PreviewPagerAdapter$PreviewFrameAnimatorListener;
.super Ljava/lang/Object;
.source "PreviewPagerAdapter.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PreviewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewFrameAnimatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PreviewPagerAdapter;


# direct methods
.method private constructor <init>(Lcom/android/settings/PreviewPagerAdapter;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/android/settings/PreviewPagerAdapter$PreviewFrameAnimatorListener;->this$0:Lcom/android/settings/PreviewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/PreviewPagerAdapter;Lcom/android/settings/PreviewPagerAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/PreviewPagerAdapter;
    .param p2, "x1"    # Lcom/android/settings/PreviewPagerAdapter$1;

    .line 201
    invoke-direct {p0, p1}, Lcom/android/settings/PreviewPagerAdapter$PreviewFrameAnimatorListener;-><init>(Lcom/android/settings/PreviewPagerAdapter;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 216
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 209
    iget-object v0, p0, Lcom/android/settings/PreviewPagerAdapter$PreviewFrameAnimatorListener;->this$0:Lcom/android/settings/PreviewPagerAdapter;

    invoke-static {v0}, Lcom/android/settings/PreviewPagerAdapter;->access$210(Lcom/android/settings/PreviewPagerAdapter;)I

    .line 210
    iget-object v0, p0, Lcom/android/settings/PreviewPagerAdapter$PreviewFrameAnimatorListener;->this$0:Lcom/android/settings/PreviewPagerAdapter;

    invoke-static {v0}, Lcom/android/settings/PreviewPagerAdapter;->access$300(Lcom/android/settings/PreviewPagerAdapter;)V

    .line 211
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 221
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 204
    iget-object v0, p0, Lcom/android/settings/PreviewPagerAdapter$PreviewFrameAnimatorListener;->this$0:Lcom/android/settings/PreviewPagerAdapter;

    invoke-static {v0}, Lcom/android/settings/PreviewPagerAdapter;->access$208(Lcom/android/settings/PreviewPagerAdapter;)I

    .line 205
    return-void
.end method
