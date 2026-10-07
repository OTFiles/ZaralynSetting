.class public Lcom/android/settings/widget/ImeAwareEditText;
.super Landroid/widget/EditText;
.source "ImeAwareEditText.java"


# instance fields
.field private mHasPendingShowSoftInputRequest:Z

.field final mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Lcom/android/settings/widget/-$$Lambda$ImeAwareEditText$jSRw3KSZxc80AfkP8GTCtV5_bRY;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/-$$Lambda$ImeAwareEditText$jSRw3KSZxc80AfkP8GTCtV5_bRY;-><init>(Lcom/android/settings/widget/ImeAwareEditText;)V

    iput-object v0, p0, Lcom/android/settings/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Lcom/android/settings/widget/-$$Lambda$ImeAwareEditText$jSRw3KSZxc80AfkP8GTCtV5_bRY;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/-$$Lambda$ImeAwareEditText$jSRw3KSZxc80AfkP8GTCtV5_bRY;-><init>(Lcom/android/settings/widget/ImeAwareEditText;)V

    iput-object v0, p0, Lcom/android/settings/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Lcom/android/settings/widget/-$$Lambda$ImeAwareEditText$jSRw3KSZxc80AfkP8GTCtV5_bRY;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/-$$Lambda$ImeAwareEditText$jSRw3KSZxc80AfkP8GTCtV5_bRY;-><init>(Lcom/android/settings/widget/ImeAwareEditText;)V

    iput-object v0, p0, Lcom/android/settings/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    new-instance v0, Lcom/android/settings/widget/-$$Lambda$ImeAwareEditText$jSRw3KSZxc80AfkP8GTCtV5_bRY;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/-$$Lambda$ImeAwareEditText$jSRw3KSZxc80AfkP8GTCtV5_bRY;-><init>(Lcom/android/settings/widget/ImeAwareEditText;)V

    iput-object v0, p0, Lcom/android/settings/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    .line 46
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/widget/ImeAwareEditText;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/widget/ImeAwareEditText;->showSoftInputIfNecessary()V

    return-void
.end method

.method private showSoftInputIfNecessary()V
    .locals 2

    .line 69
    iget-boolean v0, p0, Lcom/android/settings/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    if-eqz v0, :cond_0

    .line 70
    nop

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/widget/ImeAwareEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 72
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 73
    iput-boolean v1, p0, Lcom/android/settings/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    .line 75
    .end local v0
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .line 60
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 61
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-boolean v1, p0, Lcom/android/settings/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/android/settings/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ImeAwareEditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 63
    iget-object v1, p0, Lcom/android/settings/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ImeAwareEditText;->post(Ljava/lang/Runnable;)Z

    .line 65
    :cond_0
    return-object v0
.end method

.method public scheduleShowSoftInput()V
    .locals 3

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/widget/ImeAwareEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 79
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    .line 83
    iget-object v2, p0, Lcom/android/settings/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/ImeAwareEditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 84
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 85
    return-void

    .line 90
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    .line 91
    return-void
.end method
