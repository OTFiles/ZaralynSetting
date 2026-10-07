.class public Lcom/android/settings/widget/LabeledSeekBar;
.super Landroid/widget/SeekBar;
.source "LabeledSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;
    }
.end annotation


# instance fields
.field private final mAccessHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

.field private mLabels:[Ljava/lang/String;

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mProxySeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 52
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/LabeledSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/LabeledSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 100
    new-instance v0, Lcom/android/settings/widget/LabeledSeekBar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/LabeledSeekBar$1;-><init>(Lcom/android/settings/widget/LabeledSeekBar;)V

    iput-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mProxySeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 62
    new-instance v0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;-><init>(Lcom/android/settings/widget/LabeledSeekBar;Lcom/android/settings/widget/LabeledSeekBar;)V

    iput-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    .line 63
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mProxySeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/LabeledSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/LabeledSeekBar;

    .line 41
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/widget/LabeledSeekBar;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/widget/LabeledSeekBar;
    .param p1, "x1"    # I

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/widget/LabeledSeekBar;->sendClickEventForAccessibility(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/widget/LabeledSeekBar;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/LabeledSeekBar;

    .line 41
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mLabels:[Ljava/lang/String;

    return-object v0
.end method

.method private sendClickEventForAccessibility(I)V
    .locals 2
    .param p1, "progress"    # I

    .line 96
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 97
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 98
    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 92
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setLabels([Ljava/lang/String;)V
    .locals 0
    .param p1, "labels"    # [Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBar;->mLabels:[Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 87
    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 88
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 76
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 77
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 71
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method
