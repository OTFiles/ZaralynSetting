.class public Landroid/support/v7/widget/helper/ItemTouchHelper;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;,
        Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;,
        Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;,
        Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;,
        Landroid/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler;
    }
.end annotation


# instance fields
.field private mActionState:I

.field private mActivePointerId:I

.field private mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

.field private mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

.field private mDistances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDragScrollStartTimeInMs:J

.field private mDx:F

.field private mDy:F

.field private mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mItemTouchHelperGestureListener:Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;

.field private mMaxSwipeVelocity:F

.field private final mOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

.field private mOverdrawChild:Landroid/view/View;

.field private mOverdrawChildPosition:I

.field final mPendingCleanup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mRecoverAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final mScrollRunnable:Ljava/lang/Runnable;

.field private mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field private mSelectedFlags:I

.field private mSelectedStartX:F

.field private mSelectedStartY:F

.field private mSlop:I

.field private mSwapTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipeEscapeVelocity:F

.field private final mTmpPosition:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 439
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    .line 172
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 216
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 227
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    .line 243
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 253
    new-instance v2, Landroid/support/v7/widget/helper/ItemTouchHelper$1;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$1;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    iput-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    .line 280
    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 287
    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 294
    iput v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 306
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$2;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 440
    iput-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 441
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 69
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v7/widget/helper/ItemTouchHelper;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 69
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->scrollIfNecessary()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;)Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 69
    invoke-direct {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findAnimation(Landroid/view/MotionEvent;)Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;
    .param p1, "x1"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x2"    # Z

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->endRecoverAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method

.method static synthetic access$1200(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 69
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;
    .param p1, "x1"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x2"    # I

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method static synthetic access$1400(Landroid/support/v7/widget/helper/ItemTouchHelper;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 69
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    return v0
.end method

.method static synthetic access$1500(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;II)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    return-void
.end method

.method static synthetic access$1600(Landroid/support/v7/widget/helper/ItemTouchHelper;ILandroid/view/MotionEvent;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # I

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$1700(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 69
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;
    .param p1, "x1"    # Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    .param p2, "x2"    # I

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->postDispatchSwipe(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;I)V

    return-void
.end method

.method static synthetic access$1900(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 69
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;
    .param p1, "x1"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 69
    invoke-direct {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->moveIfNecessary(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method static synthetic access$2000(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;
    .param p1, "x1"    # Landroid/view/View;

    .line 69
    invoke-direct {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/support/v7/widget/helper/ItemTouchHelper;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 69
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->hasRunningRecoverAnim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Landroid/support/v7/widget/helper/ItemTouchHelper;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 69
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    return v0
.end method

.method static synthetic access$2202(Landroid/support/v7/widget/helper/ItemTouchHelper;I)I
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;
    .param p1, "x1"    # I

    .line 69
    iput p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    return p1
.end method

.method static synthetic access$2300(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 69
    invoke-direct {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2402(Landroid/support/v7/widget/helper/ItemTouchHelper;F)F
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;
    .param p1, "x1"    # F

    .line 69
    iput p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    return p1
.end method

.method static synthetic access$2502(Landroid/support/v7/widget/helper/ItemTouchHelper;F)F
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;
    .param p1, "x1"    # F

    .line 69
    iput p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    return p1
.end method

.method static synthetic access$300(Landroid/support/v7/widget/helper/ItemTouchHelper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 69
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 69
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v4/view/GestureDetectorCompat;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 69
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/v7/widget/helper/ItemTouchHelper;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 69
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$602(Landroid/support/v7/widget/helper/ItemTouchHelper;I)I
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;
    .param p1, "x1"    # I

    .line 69
    iput p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    return p1
.end method

.method static synthetic access$700(Landroid/support/v7/widget/helper/ItemTouchHelper;)F
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 69
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    return v0
.end method

.method static synthetic access$702(Landroid/support/v7/widget/helper/ItemTouchHelper;F)F
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;
    .param p1, "x1"    # F

    .line 69
    iput p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    return p1
.end method

.method static synthetic access$800(Landroid/support/v7/widget/helper/ItemTouchHelper;)F
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 69
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    return v0
.end method

.method static synthetic access$802(Landroid/support/v7/widget/helper/ItemTouchHelper;F)F
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;
    .param p1, "x1"    # F

    .line 69
    iput p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    return p1
.end method

.method static synthetic access$900(Landroid/support/v7/widget/helper/ItemTouchHelper;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 69
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    return-void
.end method

.method private addChildDrawingOrderCallback()V
    .locals 2

    .line 1272
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1273
    return-void

    .line 1275
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_1

    .line 1276
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper$5;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$5;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 1294
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setChildDrawingOrderCallback(Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;)V

    .line 1295
    return-void
.end method

.method private checkHorizontalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I
    .locals 8
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .line 1219
    and-int/lit8 v0, p2, 0xc

    if-eqz v0, :cond_3

    .line 1220
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1221
    .local v0, "dirFlag":I
    :goto_0
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_2

    .line 1222
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 1223
    invoke-virtual {v6, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v6

    .line 1222
    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1224
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 1225
    .local v4, "xVelocity":F
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    .line 1226
    .local v5, "yVelocity":F
    cmpl-float v1, v4, v1

    if-lez v1, :cond_1

    move v2, v3

    nop

    :cond_1
    move v1, v2

    .line 1227
    .local v1, "velDirFlag":I
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1228
    .local v2, "absXVelocity":F
    and-int v3, v1, p2

    if-eqz v3, :cond_2

    if-ne v0, v1, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 1229
    invoke-virtual {v3, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_2

    .line 1230
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    .line 1231
    return v1

    .line 1235
    .end local v1
    .end local v2
    .end local v4
    .end local v5
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 1236
    invoke-virtual {v2, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F

    move-result v2

    mul-float/2addr v1, v2

    .line 1238
    .local v1, "threshold":F
    and-int v2, p2, v0

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_3

    .line 1239
    return v0

    .line 1242
    .end local v0
    .end local v1
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private checkSelectForSwipe(ILandroid/view/MotionEvent;I)V
    .locals 12
    .param p1, "action"    # I
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;
    .param p3, "pointerIndex"    # I

    .line 965
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    iget v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    if-eq v1, v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 966
    invoke-virtual {v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->isItemViewSwipeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 969
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 970
    return-void

    .line 972
    :cond_1
    invoke-direct {p0, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findSwipedView(Landroid/view/MotionEvent;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 973
    .local v0, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v0, :cond_2

    .line 974
    return-void

    .line 976
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v2

    .line 978
    .local v2, "movementFlags":I
    const v3, 0xff00

    and-int/2addr v3, v2

    shr-int/lit8 v3, v3, 0x8

    .line 981
    .local v3, "swipeFlags":I
    if-nez v3, :cond_3

    .line 982
    return-void

    .line 987
    :cond_3
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 988
    .local v4, "x":F
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 991
    .local v5, "y":F
    iget v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float v6, v4, v6

    .line 992
    .local v6, "dx":F
    iget v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float v7, v5, v7

    .line 995
    .local v7, "dy":F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 996
    .local v8, "absDx":F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 998
    .local v9, "absDy":F
    iget v10, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v10, v10

    cmpg-float v10, v8, v10

    if-gez v10, :cond_4

    iget v10, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v10, v10

    cmpg-float v10, v9, v10

    if-gez v10, :cond_4

    .line 999
    return-void

    .line 1001
    :cond_4
    cmpl-float v10, v8, v9

    const/4 v11, 0x0

    if-lez v10, :cond_6

    .line 1002
    cmpg-float v10, v6, v11

    if-gez v10, :cond_5

    and-int/lit8 v10, v3, 0x4

    if-nez v10, :cond_5

    .line 1003
    return-void

    .line 1005
    :cond_5
    cmpl-float v10, v6, v11

    if-lez v10, :cond_8

    and-int/lit8 v10, v3, 0x8

    if-nez v10, :cond_8

    .line 1006
    return-void

    .line 1009
    :cond_6
    cmpg-float v10, v7, v11

    if-gez v10, :cond_7

    and-int/lit8 v10, v3, 0x1

    if-nez v10, :cond_7

    .line 1010
    return-void

    .line 1012
    :cond_7
    cmpl-float v10, v7, v11

    if-lez v10, :cond_8

    and-int/lit8 v10, v3, 0x2

    if-nez v10, :cond_8

    .line 1013
    return-void

    .line 1016
    :cond_8
    iput v11, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    iput v11, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 1017
    const/4 v10, 0x0

    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 1018
    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 1019
    return-void

    .line 967
    .end local v0
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    :cond_9
    :goto_0
    return-void
.end method

.method private checkVerticalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I
    .locals 8
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .line 1246
    and-int/lit8 v0, p2, 0x3

    if-eqz v0, :cond_3

    .line 1247
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1248
    .local v0, "dirFlag":I
    :goto_0
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_2

    .line 1249
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 1250
    invoke-virtual {v6, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v6

    .line 1249
    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1251
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 1252
    .local v4, "xVelocity":F
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    .line 1253
    .local v5, "yVelocity":F
    cmpl-float v1, v5, v1

    if-lez v1, :cond_1

    move v2, v3

    nop

    :cond_1
    move v1, v2

    .line 1254
    .local v1, "velDirFlag":I
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1255
    .local v2, "absYVelocity":F
    and-int v3, v1, p2

    if-eqz v3, :cond_2

    if-ne v1, v0, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 1256
    invoke-virtual {v3, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_2

    .line 1257
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    .line 1258
    return v1

    .line 1262
    .end local v1
    .end local v2
    .end local v4
    .end local v5
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 1263
    invoke-virtual {v2, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F

    move-result v2

    mul-float/2addr v1, v2

    .line 1264
    .local v1, "threshold":F
    and-int v2, p2, v0

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_3

    .line 1265
    return v0

    .line 1268
    .end local v0
    .end local v1
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private destroyCallbacks()V
    .locals 6

    .line 487
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 488
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 489
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 491
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 492
    .local v0, "recoverAnimSize":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 493
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 494
    .local v2, "recoverAnimation":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 492
    .end local v2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 496
    .end local v1
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 497
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 498
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 499
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->releaseVelocityTracker()V

    .line 500
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->stopGestureDetection()V

    .line 501
    return-void
.end method

.method private endRecoverAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .locals 4
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "override"    # Z

    .line 901
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 902
    .local v0, "recoverAnimSize":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 903
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 904
    .local v2, "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v3, p1, :cond_1

    .line 905
    iget-boolean v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    or-int/2addr v3, p2

    iput-boolean v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 906
    iget-boolean v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v3, :cond_0

    .line 907
    invoke-virtual {v2}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->cancel()V

    .line 909
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 910
    return-void

    .line 902
    .end local v2
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 913
    .end local v1
    :cond_2
    return-void
.end method

.method private findAnimation(Landroid/view/MotionEvent;)Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1138
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1139
    return-object v1

    .line 1141
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    .line 1142
    .local v0, "target":Landroid/view/View;
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1143
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1144
    .local v3, "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-object v4, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v4, v0, :cond_1

    .line 1145
    return-object v3

    .line 1142
    .end local v3
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1148
    .end local v2
    :cond_2
    return-object v1
.end method

.method private findChildView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1023
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1024
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1025
    .local v1, "y":F
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_0

    .line 1026
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1027
    .local v2, "selectedView":Landroid/view/View;
    iget v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v4, v5

    invoke-static {v2, v0, v1, v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1028
    return-object v2

    .line 1031
    .end local v2
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1032
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1033
    .local v3, "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-object v4, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1034
    .local v4, "view":Landroid/view/View;
    iget v5, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v6, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    invoke-static {v4, v0, v1, v5, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1035
    return-object v4

    .line 1031
    .end local v3
    .end local v4
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1038
    .end local v2
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method private findSwapTargets(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/util/List;
    .locals 23
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 789
    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    if-nez v2, :cond_0

    .line 790
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 791
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    goto :goto_0

    .line 793
    :cond_0
    iget-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 794
    iget-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 796
    :goto_0
    iget-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getBoundingBoxMargin()I

    move-result v2

    .line 797
    .local v2, "margin":I
    iget v3, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v4, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v3, v2

    .line 798
    .local v3, "left":I
    iget v4, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v4, v2

    .line 799
    .local v4, "top":I
    iget-object v5, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    const/4 v6, 0x2

    mul-int v7, v6, v2

    add-int/2addr v5, v7

    .line 800
    .local v5, "right":I
    iget-object v7, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v4

    mul-int v8, v6, v2

    add-int/2addr v7, v8

    .line 801
    .local v7, "bottom":I
    add-int v8, v3, v5

    div-int/2addr v8, v6

    .line 802
    .local v8, "centerX":I
    add-int v9, v4, v7

    div-int/2addr v9, v6

    .line 803
    .local v9, "centerY":I
    iget-object v10, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v10

    .line 804
    .local v10, "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v11

    .line 805
    .local v11, "childCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v11, :cond_6

    .line 806
    invoke-virtual {v10, v13}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 807
    .local v14, "other":Landroid/view/View;
    iget-object v15, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v14, v15, :cond_1

    .line 808
    nop

    .line 805
    .end local v2
    .end local v3
    .end local v14
    .local v19, "margin":I
    .local v21, "left":I
    :goto_2
    move/from16 v19, v2

    move/from16 v21, v3

    goto/16 :goto_4

    .line 810
    .end local v19
    .end local v21
    .restart local v2
    .restart local v3
    .restart local v14
    :cond_1
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    if-lt v15, v4, :cond_5

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    if-gt v15, v7, :cond_5

    .line 811
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v15

    if-lt v15, v3, :cond_5

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    if-le v15, v5, :cond_2

    .line 812
    goto :goto_2

    .line 814
    :cond_2
    iget-object v15, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v15, v14}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v15

    .line 815
    .local v15, "otherVh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v12, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v6, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v12, v6, v1, v15}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->canDropOver(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 817
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v6

    add-int/2addr v1, v6

    const/4 v6, 0x2

    div-int/2addr v1, v6

    sub-int v1, v8, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 818
    .local v1, "dx":I
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v16

    add-int v12, v12, v16

    div-int/2addr v12, v6

    sub-int v12, v9, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 819
    .local v12, "dy":I
    mul-int v16, v1, v1

    mul-int v17, v12, v12

    add-int v6, v16, v17

    .line 821
    .local v6, "dist":I
    const/16 v16, 0x0

    .line 822
    .local v16, "pos":I
    move/from16 v18, v1

    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .end local v1
    .local v18, "dx":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 823
    .local v1, "cnt":I
    move/from16 v19, v2

    move/from16 v2, v16

    const/16 v16, 0x0

    .local v2, "pos":I
    .local v16, "j":I
    .restart local v19
    :goto_3
    move/from16 v20, v16

    .end local v16
    .local v20, "j":I
    move/from16 v21, v3

    move/from16 v3, v20

    if-ge v3, v1, :cond_3

    .line 824
    .end local v20
    .local v3, "j":I
    .restart local v21
    move/from16 v22, v1

    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    .end local v1
    .local v22, "cnt":I
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v6, v1, :cond_4

    .line 825
    add-int/lit8 v2, v2, 0x1

    .line 823
    add-int/lit8 v16, v3, 0x1

    .end local v3
    .restart local v16
    move/from16 v3, v21

    move/from16 v1, v22

    goto :goto_3

    .line 830
    .end local v16
    .end local v22
    .restart local v1
    :cond_3
    move/from16 v22, v1

    .end local v1
    .restart local v22
    :cond_4
    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v1, v2, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 831
    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .end local v2
    .end local v6
    .end local v12
    .end local v14
    .end local v15
    .end local v18
    .end local v22
    goto :goto_4

    .line 805
    .end local v19
    .end local v21
    .local v2, "margin":I
    .local v3, "left":I
    :cond_5
    move/from16 v19, v2

    move/from16 v21, v3

    .end local v2
    .end local v3
    .restart local v19
    .restart local v21
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, v19

    move/from16 v3, v21

    move-object/from16 v1, p1

    const/4 v6, 0x2

    goto/16 :goto_1

    .line 834
    .end local v13
    .end local v19
    .end local v21
    .restart local v2
    .restart local v3
    :cond_6
    move/from16 v19, v2

    move/from16 v21, v3

    .end local v2
    .end local v3
    .restart local v19
    .restart local v21
    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    return-object v1
.end method

.method private findSwipedView(Landroid/view/MotionEvent;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 8
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 936
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 937
    .local v0, "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 938
    return-object v2

    .line 940
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 941
    .local v1, "pointerIndex":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float/2addr v3, v4

    .line 942
    .local v3, "dx":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float/2addr v4, v5

    .line 943
    .local v4, "dy":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 944
    .local v5, "absDx":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 946
    .local v6, "absDy":F
    iget v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v7, v7

    cmpg-float v7, v5, v7

    if-gez v7, :cond_1

    iget v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v7, v7

    cmpg-float v7, v6, v7

    if-gez v7, :cond_1

    .line 947
    return-object v2

    .line 949
    :cond_1
    cmpl-float v7, v5, v6

    if-lez v7, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 950
    return-object v2

    .line 951
    :cond_2
    cmpl-float v7, v6, v5

    if-lez v7, :cond_3

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 952
    return-object v2

    .line 954
    :cond_3
    invoke-direct {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v7

    .line 955
    .local v7, "child":Landroid/view/View;
    if-nez v7, :cond_4

    .line 956
    return-object v2

    .line 958
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v7}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    return-object v2
.end method

.method private getSelectedDxDy([F)V
    .locals 3
    .param p1, "outPosition"    # [F

    .line 520
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0xc

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 521
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v0, v2

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p1, v1

    goto :goto_0

    .line 523
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    aput v0, p1, v1

    .line 525
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 526
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v0, v2

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p1, v1

    goto :goto_1

    .line 528
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    aput v0, p1, v1

    .line 530
    :goto_1
    return-void
.end method

.method private hasRunningRecoverAnim()Z
    .locals 4

    .line 713
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 714
    .local v0, "size":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 715
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    iget-boolean v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v3, :cond_0

    .line 716
    const/4 v1, 0x1

    return v1

    .line 714
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 719
    .end local v2
    :cond_1
    return v1
.end method

.method private static hitTest(Landroid/view/View;FFFF)Z
    .locals 1
    .param p0, "child"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "left"    # F
    .param p4, "top"    # F

    .line 444
    cmpl-float v0, p1, p3

    if-ltz v0, :cond_0

    .line 445
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    cmpl-float v0, p2, p4

    if-ltz v0, :cond_0

    .line 447
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p4

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private moveIfNecessary(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 17
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v0, p0

    .line 841
    move-object/from16 v9, p1

    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 842
    return-void

    .line 844
    :cond_0
    iget v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 845
    return-void

    .line 848
    :cond_1
    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v1, v9}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getMoveThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F

    move-result v10

    .line 849
    .local v10, "threshold":F
    iget v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v1, v2

    float-to-int v11, v1

    .line 850
    .local v11, "x":I
    iget v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v1, v2

    float-to-int v12, v1

    .line 851
    .local v12, "y":I
    iget-object v1, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, v12, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v10

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget-object v1, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 852
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 853
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v10

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 854
    return-void

    .line 856
    :cond_2
    invoke-direct/range {p0 .. p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findSwapTargets(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/util/List;

    move-result-object v13

    .line 857
    .local v13, "swapTargets":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 858
    return-void

    .line 861
    :cond_3
    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v1, v9, v13, v11, v12}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->chooseDropTarget(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v14

    .line 862
    .local v14, "target":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v14, :cond_4

    .line 863
    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 864
    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 865
    return-void

    .line 867
    :cond_4
    invoke-virtual {v14}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v15

    .line 868
    .local v15, "toPosition":I
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v16

    .line 869
    .local v16, "fromPosition":I
    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2, v9, v14}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 871
    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v3, v9

    move/from16 v4, v16

    move-object v5, v14

    move v6, v15

    move v7, v11

    move v8, v12

    invoke-virtual/range {v1 .. v8}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onMoved(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILandroid/support/v7/widget/RecyclerView$ViewHolder;III)V

    .line 874
    :cond_5
    return-void
.end method

.method private obtainVelocityTracker()V
    .locals 1

    .line 922
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 925
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 926
    return-void
.end method

.method private postDispatchSwipe(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;I)V
    .locals 2
    .param p1, "anim"    # Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    .param p2, "swipeDir"    # I

    .line 691
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/helper/ItemTouchHelper$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$4;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 710
    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .line 929
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 931
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 933
    :cond_0
    return-void
.end method

.method private removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 1298
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 1299
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 1301
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v1, :cond_0

    .line 1302
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setChildDrawingOrderCallback(Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;)V

    .line 1305
    :cond_0
    return-void
.end method

.method private scrollIfNecessary()Z
    .locals 23

    .line 726
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    if-nez v1, :cond_0

    .line 727
    iput-wide v3, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 728
    return v2

    .line 730
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 731
    .local v5, "now":J
    iget-wide v7, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    cmp-long v1, v7, v3

    if-nez v1, :cond_1

    const-wide/16 v7, 0x0

    :goto_0
    move-wide v14, v7

    goto :goto_1

    :cond_1
    iget-wide v7, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    sub-long v7, v5, v7

    goto :goto_0

    .line 733
    .local v14, "scrollDuration":J
    :goto_1
    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 734
    .local v1, "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v7, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    if-nez v7, :cond_2

    .line 735
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 737
    :cond_2
    const/4 v7, 0x0

    .line 738
    .local v7, "scrollX":I
    const/4 v8, 0x0

    .line 739
    .local v8, "scrollY":I
    iget-object v9, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v10, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v9, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 740
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    .line 741
    iget v9, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v11, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v9, v11

    float-to-int v9, v9

    .line 742
    .local v9, "curX":I
    iget-object v11, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int v11, v9, v11

    iget-object v12, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    .line 743
    .local v11, "leftDiff":I
    iget v12, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    cmpg-float v12, v12, v10

    if-gez v12, :cond_3

    if-gez v11, :cond_3

    .line 744
    move v7, v11

    goto :goto_2

    .line 745
    :cond_3
    iget v12, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    cmpl-float v12, v12, v10

    if-lez v12, :cond_4

    .line 746
    iget-object v12, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 747
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    iget-object v13, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 748
    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v13

    iget-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v13, v2

    sub-int/2addr v12, v13

    .line 749
    .local v12, "rightDiff":I
    if-lez v12, :cond_4

    .line 750
    move v2, v12

    .line 754
    .end local v7
    .end local v9
    .end local v11
    .end local v12
    .local v2, "scrollX":I
    move v7, v2

    .end local v2
    .restart local v7
    :cond_4
    :goto_2
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 755
    iget v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v9, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v2, v9

    float-to-int v2, v2

    .line 756
    .local v2, "curY":I
    iget-object v9, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int v9, v2, v9

    iget-object v11, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v11

    sub-int/2addr v9, v11

    .line 757
    .local v9, "topDiff":I
    iget v11, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    cmpg-float v11, v11, v10

    if-gez v11, :cond_5

    if-gez v9, :cond_5

    .line 758
    move v8, v9

    goto :goto_3

    .line 759
    :cond_5
    iget v11, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    cmpl-float v10, v11, v10

    if-lez v10, :cond_6

    .line 760
    iget-object v10, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v10, v2

    iget-object v11, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    iget-object v11, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 761
    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v11

    iget-object v12, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    sub-int/2addr v10, v11

    .line 762
    .local v10, "bottomDiff":I
    if-lez v10, :cond_6

    .line 763
    move v8, v10

    .line 767
    .end local v2
    .end local v9
    .end local v10
    :cond_6
    :goto_3
    if-eqz v7, :cond_7

    .line 768
    iget-object v9, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v10, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 769
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v11

    iget-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 770
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v13

    .line 768
    move v12, v7

    invoke-virtual/range {v9 .. v15}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroid/support/v7/widget/RecyclerView;IIIJ)I

    move-result v7

    .line 772
    :cond_7
    if-eqz v8, :cond_8

    .line 773
    iget-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v9, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 774
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v18

    iget-object v10, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 775
    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v20

    .line 773
    move-object/from16 v16, v2

    move-object/from16 v17, v9

    move/from16 v19, v8

    move-wide/from16 v21, v14

    invoke-virtual/range {v16 .. v22}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroid/support/v7/widget/RecyclerView;IIIJ)I

    move-result v8

    .line 777
    :cond_8
    if-nez v7, :cond_a

    if-eqz v8, :cond_9

    goto :goto_4

    .line 784
    :cond_9
    iput-wide v3, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 785
    const/4 v2, 0x0

    return v2

    .line 778
    :cond_a
    :goto_4
    iget-wide v9, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    cmp-long v2, v9, v3

    if-nez v2, :cond_b

    .line 779
    iput-wide v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 781
    :cond_b
    iget-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v7, v8}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 782
    const/4 v2, 0x1

    return v2
.end method

.method private select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 28
    .param p1, "selected"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 566
    move/from16 v13, p2

    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v12, v0, :cond_0

    iget v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    if-ne v13, v0, :cond_0

    .line 567
    return-void

    .line 569
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 570
    iget v14, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    .line 572
    .local v14, "prevActionState":I
    const/4 v15, 0x1

    invoke-direct {v11, v12, v15}, Landroid/support/v7/widget/helper/ItemTouchHelper;->endRecoverAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 573
    iput v13, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    .line 574
    const/4 v10, 0x2

    if-ne v13, v10, :cond_2

    .line 575
    if-eqz v12, :cond_1

    .line 582
    iget-object v0, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 583
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->addChildDrawingOrderCallback()V

    goto :goto_0

    .line 576
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must pass a ViewHolder when dragging"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_2
    :goto_0
    const/16 v9, 0x8

    mul-int v0, v9, v13

    add-int/2addr v0, v9

    shl-int v0, v15, v0

    add-int/lit8 v16, v0, -0x1

    .line 587
    .local v16, "actionStateMask":I
    const/16 v17, 0x0

    .line 589
    .local v17, "preventLayout":Z
    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v8, 0x0

    if-eqz v0, :cond_8

    .line 590
    iget-object v7, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 591
    .local v7, "prevSelected":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 592
    if-ne v14, v10, :cond_3

    .line 593
    move v0, v8

    goto :goto_1

    :cond_3
    invoke-direct {v11, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper;->swipeIfNecessary(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    :goto_1
    move v6, v0

    .line 594
    .local v6, "swipeDir":I
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->releaseVelocityTracker()V

    .line 598
    const/4 v0, 0x4

    if-eq v6, v0, :cond_4

    if-eq v6, v9, :cond_4

    const/16 v1, 0x10

    if-eq v6, v1, :cond_4

    const/16 v1, 0x20

    if-eq v6, v1, :cond_4

    packed-switch v6, :pswitch_data_0

    .line 612
    const/4 v1, 0x0

    .line 613
    .local v1, "targetTranslateX":F
    const/4 v2, 0x0

    .end local v1
    .local v2, "targetTranslateY":F
    .local v18, "targetTranslateX":F
    :goto_2
    move/from16 v18, v1

    goto :goto_3

    .line 608
    .end local v2
    .end local v18
    :pswitch_0    # 0x1 0x2
    const/4 v1, 0x0

    .line 609
    .restart local v1
    iget v2, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    iget-object v3, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 610
    .restart local v2
    goto :goto_2

    .line 603
    .end local v1
    .end local v2
    :cond_4
    const/4 v2, 0x0

    .line 604
    .restart local v2
    iget v1, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iget-object v3, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    .line 605
    .restart local v1
    goto :goto_2

    .line 613
    .end local v1
    .restart local v18
    :goto_3
    move/from16 v19, v2

    .line 615
    .end local v2
    .local v19, "targetTranslateY":F
    if-ne v14, v10, :cond_5

    .line 616
    const/16 v0, 0x8

    .local v0, "animationType":I
    :goto_4
    goto :goto_5

    .line 617
    .end local v0
    :cond_5
    if-lez v6, :cond_6

    .line 618
    const/4 v0, 0x2

    goto :goto_4

    .line 620
    :cond_6
    nop

    .restart local v0
    :goto_5
    move v5, v0

    .line 622
    .end local v0
    .local v5, "animationType":I
    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {v11, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 623
    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    aget v20, v0, v8

    .line 624
    .local v20, "currentTranslateX":F
    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    aget v21, v0, v15

    .line 625
    .local v21, "currentTranslateY":F
    new-instance v22, Landroid/support/v7/widget/helper/ItemTouchHelper$3;

    move-object/from16 v0, v22

    move-object v1, v11

    move-object v2, v7

    move v3, v5

    move v4, v14

    move v15, v5

    move/from16 v5, v20

    .end local v5
    .local v15, "animationType":I
    move/from16 v23, v6

    move/from16 v6, v21

    .end local v6
    .local v23, "swipeDir":I
    move-object/from16 v24, v7

    move/from16 v7, v18

    .end local v7
    .local v24, "prevSelected":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    move/from16 v25, v14

    move v14, v8

    move/from16 v8, v19

    .end local v14
    .local v25, "prevActionState":I
    move/from16 v26, v9

    move/from16 v9, v23

    move v14, v10

    move-object/from16 v10, v24

    invoke-direct/range {v0 .. v10}, Landroid/support/v7/widget/helper/ItemTouchHelper$3;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIFFFFILandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 654
    .local v0, "rv":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-object v1, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    sub-float v3, v18, v20

    sub-float v4, v19, v21

    invoke-virtual {v1, v2, v15, v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getAnimationDuration(Landroid/support/v7/widget/RecyclerView;IFF)J

    move-result-wide v1

    .line 656
    .local v1, "duration":J
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->setDuration(J)V

    .line 657
    iget-object v3, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    invoke-virtual {v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->start()V

    .line 659
    const/4 v0, 0x1

    .line 660
    .end local v1
    .end local v15
    .end local v17
    .end local v18
    .end local v19
    .end local v20
    .end local v21
    .end local v23
    .local v0, "preventLayout":Z
    nop

    .line 664
    move/from16 v17, v0

    move-object/from16 v0, v24

    goto :goto_6

    .line 661
    .end local v0
    .end local v24
    .end local v25
    .restart local v7
    .restart local v14
    .restart local v17
    :cond_7
    move-object/from16 v24, v7

    move/from16 v26, v9

    move/from16 v25, v14

    move v14, v10

    .end local v7
    .end local v14
    .restart local v24
    .restart local v25
    move-object/from16 v0, v24

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .end local v24
    .local v0, "prevSelected":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-direct {v11, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 662
    iget-object v1, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 664
    :goto_6
    const/4 v1, 0x0

    iput-object v1, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .end local v0
    goto :goto_7

    .line 666
    .end local v25
    .restart local v14
    :cond_8
    move/from16 v26, v9

    move/from16 v25, v14

    move v14, v10

    .end local v14
    .restart local v25
    :goto_7
    if-eqz v12, :cond_9

    .line 667
    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 668
    invoke-virtual {v0, v1, v12}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    and-int v0, v0, v16

    iget v1, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    mul-int/lit8 v1, v1, 0x8

    shr-int/2addr v0, v1

    iput v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    .line 670
    iget-object v0, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    .line 671
    iget-object v0, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    .line 672
    iput-object v12, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 674
    if-ne v13, v14, :cond_9

    .line 675
    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_8

    .line 678
    :cond_9
    const/4 v1, 0x0

    :goto_8
    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 679
    .local v0, "rvParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_b

    .line 680
    iget-object v2, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_a

    const/4 v1, 0x1

    nop

    :cond_a
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 682
    :cond_b
    if-nez v17, :cond_c

    .line 683
    iget-object v1, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 685
    :cond_c
    iget-object v1, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v3, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 686
    iget-object v1, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 687
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method private setupCallbacks()V
    .locals 3

    .line 478
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 479
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    .line 480
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 481
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 482
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 483
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startGestureDetection()V

    .line 484
    return-void
.end method

.method private startGestureDetection()V
    .locals 3

    .line 504
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 505
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 507
    return-void
.end method

.method private stopGestureDetection()V
    .locals 2

    .line 510
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;

    invoke-virtual {v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->doNotReactToLongPress()V

    .line 512
    iput-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 514
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    if-eqz v0, :cond_1

    .line 515
    iput-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 517
    :cond_1
    return-void
.end method

.method private swipeIfNecessary(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 7
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 1173
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1174
    return v1

    .line 1176
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1177
    .local v0, "originalMovementFlags":I
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1179
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 1177
    invoke-virtual {v2, v0, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v2

    .line 1180
    .local v2, "absoluteMovementFlags":I
    const v3, 0xff00

    and-int v4, v2, v3

    shr-int/lit8 v4, v4, 0x8

    .line 1182
    .local v4, "flags":I
    if-nez v4, :cond_1

    .line 1183
    return v1

    .line 1185
    :cond_1
    and-int/2addr v3, v0

    shr-int/lit8 v3, v3, 0x8

    .line 1188
    .local v3, "originalFlags":I
    iget v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 1189
    invoke-direct {p0, p1, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkHorizontalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I

    move-result v5

    move v6, v5

    .local v6, "swipeDir":I
    if-lez v5, :cond_3

    .line 1191
    and-int v1, v3, v6

    if-nez v1, :cond_2

    .line 1193
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1194
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 1193
    invoke-static {v6, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v1

    return v1

    .line 1196
    :cond_2
    return v6

    .line 1198
    :cond_3
    invoke-direct {p0, p1, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkVerticalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I

    move-result v5

    move v6, v5

    if-lez v5, :cond_7

    .line 1199
    return v6

    .line 1202
    .end local v6
    :cond_4
    invoke-direct {p0, p1, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkVerticalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I

    move-result v5

    move v6, v5

    .restart local v6
    if-lez v5, :cond_5

    .line 1203
    return v6

    .line 1205
    :cond_5
    invoke-direct {p0, p1, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkHorizontalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I

    move-result v5

    move v6, v5

    if-lez v5, :cond_7

    .line 1207
    and-int v1, v3, v6

    if-nez v1, :cond_6

    .line 1209
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1210
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 1209
    invoke-static {v6, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v1

    return v1

    .line 1212
    :cond_6
    return v6

    .line 1215
    :cond_7
    return v1
.end method

.method private updateDxDy(Landroid/view/MotionEvent;II)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "directionFlags"    # I
    .param p3, "pointerIndex"    # I

    .line 1152
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1153
    .local v0, "x":F
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 1156
    .local v1, "y":F
    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float v2, v0, v2

    iput v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 1157
    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float v2, v1, v2

    iput v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    .line 1158
    and-int/lit8 v2, p2, 0x4

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1159
    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 1161
    :cond_0
    and-int/lit8 v2, p2, 0x8

    if-nez v2, :cond_1

    .line 1162
    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 1164
    :cond_1
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_2

    .line 1165
    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    .line 1167
    :cond_2
    and-int/lit8 v2, p2, 0x2

    if-nez v2, :cond_3

    .line 1168
    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    .line 1170
    :cond_3
    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 460
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-ne v0, p1, :cond_0

    .line 461
    return-void

    .line 463
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 464
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->destroyCallbacks()V

    .line 466
    :cond_1
    iput-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 467
    if-eqz p1, :cond_2

    .line 468
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 469
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Landroid/support/v7/recyclerview/R$dimen;->item_touch_helper_swipe_escape_velocity:I

    .line 470
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 471
    sget v1, Landroid/support/v7/recyclerview/R$dimen;->item_touch_helper_swipe_escape_max_velocity:I

    .line 472
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 473
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->setupCallbacks()V

    .line 475
    .end local v0
    :cond_2
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 918
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 919
    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 878
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 882
    invoke-direct {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 883
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 884
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v0, :cond_0

    .line 885
    return-void

    .line 887
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v0, v1, :cond_1

    .line 888
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 890
    :cond_1
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->endRecoverAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 891
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 892
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 895
    :cond_2
    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 547
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 548
    const/4 v0, 0x0

    .local v0, "dx":F
    const/4 v1, 0x0

    .line 549
    .local v1, "dy":F
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_0

    .line 550
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 551
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v3, 0x0

    aget v0, v2, v3

    .line 552
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v3, 0x1

    aget v1, v2, v3

    .line 554
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    move-object v3, p1

    move-object v4, p2

    move v8, v0

    move v9, v1

    invoke-virtual/range {v2 .. v9}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 556
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 534
    const/4 v0, 0x0

    .local v0, "dx":F
    const/4 v1, 0x0

    .line 535
    .local v1, "dy":F
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_0

    .line 536
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 537
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v3, 0x0

    aget v0, v2, v3

    .line 538
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v3, 0x1

    aget v1, v2, v3

    .line 540
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    move-object v3, p1

    move-object v4, p2

    move v8, v0

    move v9, v1

    invoke-virtual/range {v2 .. v9}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 542
    return-void
.end method

.method public startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 1076
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->hasDragFlag(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1077
    const-string v0, "ItemTouchHelper"

    const-string v1, "Start drag has been called but dragging is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    return-void

    .line 1080
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eq v0, v1, :cond_1

    .line 1081
    const-string v0, "ItemTouchHelper"

    const-string v1, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    return-void

    .line 1085
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    .line 1086
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 1087
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 1088
    return-void
.end method
