.class public Lcom/android/settings/custom/PopWinDialog;
.super Landroid/widget/PopupWindow;
.source "PopWinDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field private animDn:Landroid/view/animation/Animation;

.field private animUp:Landroid/view/animation/Animation;

.field private bOnDismissed:Z

.field private currentAnim:Landroid/view/animation/Animation;

.field private mAddItemNumber:I

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSelecteableMode:Z

.field private popopupDialogContainer:Landroid/view/ViewGroup;

.field private popopupDialogDialog:Landroid/view/ViewGroup;

.field private popopupDialogRoot:Landroid/view/ViewGroup;

.field private winAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewClick"    # Landroid/view/View$OnClickListener;
    .param p3, "dismissListener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 48
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2, v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 38
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/custom/PopWinDialog;->bOnDismissed:Z

    .line 39
    iput v3, p0, Lcom/android/settings/custom/PopWinDialog;->mAddItemNumber:I

    .line 40
    iput-boolean v3, p0, Lcom/android/settings/custom/PopWinDialog;->mSelecteableMode:Z

    .line 41
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/android/settings/custom/PopWinDialog;->winAlpha:F

    .line 49
    iput-object p1, p0, Lcom/android/settings/custom/PopWinDialog;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/settings/custom/PopWinDialog;->mClickListener:Landroid/view/View$OnClickListener;

    .line 51
    iput-object p3, p0, Lcom/android/settings/custom/PopWinDialog;->mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 52
    iget-object v4, p0, Lcom/android/settings/custom/PopWinDialog;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/android/settings/custom/PopWinDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 54
    iget-object v4, p0, Lcom/android/settings/custom/PopWinDialog;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0d007e

    invoke-virtual {v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settings/custom/PopWinDialog;->popopupDialogRoot:Landroid/view/ViewGroup;

    .line 55
    iget-object v4, p0, Lcom/android/settings/custom/PopWinDialog;->popopupDialogRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v4, p0, Lcom/android/settings/custom/PopWinDialog;->popopupDialogRoot:Landroid/view/ViewGroup;

    const v5, 0x7f0a0305

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v4, p0, Lcom/android/settings/custom/PopWinDialog;->popopupDialogRoot:Landroid/view/ViewGroup;

    const v5, 0x7f0a0306

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settings/custom/PopWinDialog;->popopupDialogDialog:Landroid/view/ViewGroup;

    .line 60
    iget-object v4, p0, Lcom/android/settings/custom/PopWinDialog;->popopupDialogDialog:Landroid/view/ViewGroup;

    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v4, p0, Lcom/android/settings/custom/PopWinDialog;->popopupDialogRoot:Landroid/view/ViewGroup;

    const v5, 0x7f0a0307

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settings/custom/PopWinDialog;->popopupDialogContainer:Landroid/view/ViewGroup;

    .line 63
    iget-object v4, p0, Lcom/android/settings/custom/PopWinDialog;->popopupDialogContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v4, p0, Lcom/android/settings/custom/PopWinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f010011

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/custom/PopWinDialog;->animUp:Landroid/view/animation/Animation;

    .line 66
    iget-object v4, p0, Lcom/android/settings/custom/PopWinDialog;->animUp:Landroid/view/animation/Animation;

    invoke-virtual {v4, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 67
    iget-object v4, p0, Lcom/android/settings/custom/PopWinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f010010

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/custom/PopWinDialog;->animDn:Landroid/view/animation/Animation;

    .line 68
    iget-object v4, p0, Lcom/android/settings/custom/PopWinDialog;->animDn:Landroid/view/animation/Animation;

    invoke-virtual {v4, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 69
    iput-object v1, p0, Lcom/android/settings/custom/PopWinDialog;->currentAnim:Landroid/view/animation/Animation;

    .line 70
    iget-object v1, p0, Lcom/android/settings/custom/PopWinDialog;->popopupDialogRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/android/settings/custom/PopWinDialog;->setContentView(Landroid/view/View;)V

    .line 72
    iget-object v1, p0, Lcom/android/settings/custom/PopWinDialog;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 73
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 74
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v5, p0, Lcom/android/settings/custom/PopWinDialog;->winAlpha:F

    .line 75
    const v5, 0x3f19999a    # 0.6f

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 76
    invoke-virtual {v1, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 78
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v5}, Lcom/android/settings/custom/PopWinDialog;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    invoke-virtual {p0, v2}, Lcom/android/settings/custom/PopWinDialog;->setWidth(I)V

    .line 80
    invoke-virtual {p0, v2}, Lcom/android/settings/custom/PopWinDialog;->setHeight(I)V

    .line 81
    invoke-virtual {p0, p0}, Lcom/android/settings/custom/PopWinDialog;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/settings/custom/PopWinDialog;->setFocusable(Z)V

    .line 83
    return-void
.end method


# virtual methods
.method public addItem(ILjava/lang/CharSequence;)V
    .locals 4
    .param p1, "onlyId"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 90
    iget-boolean v0, p0, Lcom/android/settings/custom/PopWinDialog;->mSelecteableMode:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d0080

    goto :goto_0

    :cond_0
    const v0, 0x7f0d007f

    .line 91
    .local v0, "layoutId":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/custom/PopWinDialog;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/settings/custom/PopWinDialog;->popopupDialogContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 92
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setId(I)V

    .line 93
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v2, 0x7f0a048f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v2, p0, Lcom/android/settings/custom/PopWinDialog;->popopupDialogContainer:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/android/settings/custom/PopWinDialog;->mAddItemNumber:I

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 96
    iget v2, p0, Lcom/android/settings/custom/PopWinDialog;->mAddItemNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/settings/custom/PopWinDialog;->mAddItemNumber:I

    .line 97
    return-void
.end method

.method public canDoneAnim()Z
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->currentAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/custom/PopWinDialog;->bOnDismissed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dismiss()V
    .locals 3

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/custom/PopWinDialog;->canDoneAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/custom/PopWinDialog;->exit()V

    goto :goto_0

    .line 259
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/custom/PopWinDialog;->bOnDismissed:Z

    .line 261
    iget-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 262
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 263
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/android/settings/custom/PopWinDialog;->winAlpha:F

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 264
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 266
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 268
    .end local v0
    .end local v1
    :goto_0
    return-void
.end method

.method public exit()V
    .locals 2

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/custom/PopWinDialog;->canDoneAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->animDn:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->currentAnim:Landroid/view/animation/Animation;

    .line 223
    iget-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->popopupDialogRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/custom/PopWinDialog;->currentAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 225
    :cond_0
    return-void
.end method

.method public bridge synthetic getContentView()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/android/settings/custom/PopWinDialog;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getContentView()Landroid/view/ViewGroup;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->popopupDialogRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 312
    iget-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->currentAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->animDn:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->currentAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/settings/custom/PopWinDialog;->animDn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/custom/PopWinDialog;->dismiss()V

    goto :goto_0

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->currentAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->animUp:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->currentAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/settings/custom/PopWinDialog;->animUp:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 317
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->currentAnim:Landroid/view/animation/Animation;

    .line 318
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 322
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 308
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 277
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/custom/PopWinDialog;->canDoneAnim()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 280
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 291
    iget-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 289
    :pswitch_0    # 0x7f0a0307 0x7f0a0306
    goto :goto_0

    .line 283
    :pswitch_1    # 0x7f0a0308 0x7f0a0305
    iget-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->animDn:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->currentAnim:Landroid/view/animation/Animation;

    .line 284
    iget-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->popopupDialogRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/custom/PopWinDialog;->currentAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 285
    nop

    .line 296
    :cond_1
    :goto_0
    return-void

    .line 278
    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0305
        :pswitch_1    # 0x7f0a0305
        :pswitch_0    # 0x7f0a0306
        :pswitch_0    # 0x7f0a0307
        :pswitch_1    # 0x7f0a0308
    .end packed-switch
.end method

.method public onDismiss()V
    .locals 1

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/custom/PopWinDialog;->bOnDismissed:Z

    .line 249
    iget-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 252
    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    .line 228
    iget-boolean v0, p0, Lcom/android/settings/custom/PopWinDialog;->bOnDismissed:Z

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->currentAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->currentAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/custom/PopWinDialog;->dismiss()V

    .line 234
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->mContext:Landroid/content/Context;

    .line 235
    iput-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 236
    iput-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->popopupDialogDialog:Landroid/view/ViewGroup;

    .line 237
    iput-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->mClickListener:Landroid/view/View$OnClickListener;

    .line 238
    iput-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->animUp:Landroid/view/animation/Animation;

    .line 239
    iput-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->animDn:Landroid/view/animation/Animation;

    .line 240
    iput-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->currentAnim:Landroid/view/animation/Animation;

    .line 241
    iput-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->popopupDialogContainer:Landroid/view/ViewGroup;

    .line 242
    iget-object v1, p0, Lcom/android/settings/custom/PopWinDialog;->popopupDialogRoot:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 243
    iput-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->popopupDialogRoot:Landroid/view/ViewGroup;

    .line 244
    return-void
.end method

.method public show()V
    .locals 8

    .line 177
    iget-boolean v0, p0, Lcom/android/settings/custom/PopWinDialog;->bOnDismissed:Z

    if-nez v0, :cond_7

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "iVisiableSum":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "num":I
    .local v2, "iVisiableSum":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/custom/PopWinDialog;->popopupDialogContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 180
    iget-object v3, p0, Lcom/android/settings/custom/PopWinDialog;->popopupDialogContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 181
    .local v3, "view":Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 182
    add-int/lit8 v2, v2, 0x1

    .line 179
    .end local v3
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    .end local v0
    :cond_1
    const/4 v0, 0x0

    .line 186
    .local v0, "iDrawableId":I
    const/4 v3, 0x0

    .line 187
    .local v3, "iVisiabalCount":I
    move v4, v3

    move v3, v0

    move v0, v1

    .local v0, "num":I
    .local v3, "iDrawableId":I
    .local v4, "iVisiabalCount":I
    :goto_1
    iget-object v5, p0, Lcom/android/settings/custom/PopWinDialog;->popopupDialogContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    if-ge v0, v5, :cond_6

    .line 188
    iget-object v5, p0, Lcom/android/settings/custom/PopWinDialog;->popopupDialogContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 189
    .local v5, "view":Landroid/view/ViewGroup;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    if-nez v7, :cond_5

    .line 190
    add-int/lit8 v4, v4, 0x1

    .line 191
    if-ne v4, v6, :cond_3

    .line 192
    if-ne v2, v6, :cond_2

    const v6, 0x7f0802b3

    goto :goto_2

    :cond_2
    const v6, 0x7f0802b4

    :goto_2
    move v3, v6

    goto :goto_4

    .line 194
    :cond_3
    if-ne v2, v4, :cond_4

    const v6, 0x7f0802b1

    goto :goto_3

    :cond_4
    const v6, 0x7f0802b2

    :goto_3
    move v3, v6

    .line 196
    :goto_4
    const v6, 0x7f0a048f

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 187
    .end local v5
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 199
    .end local v0
    :cond_6
    iget-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->popopupDialogRoot:Landroid/view/ViewGroup;

    const/16 v5, 0x11

    invoke-virtual {p0, v0, v5, v1, v1}, Lcom/android/settings/custom/PopWinDialog;->showAtLocation(Landroid/view/View;III)V

    .line 200
    invoke-virtual {p0, v6}, Lcom/android/settings/custom/PopWinDialog;->setFocusable(Z)V

    .line 201
    iget-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->animUp:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->currentAnim:Landroid/view/animation/Animation;

    .line 202
    iget-object v0, p0, Lcom/android/settings/custom/PopWinDialog;->popopupDialogRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/custom/PopWinDialog;->currentAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 204
    .end local v2
    .end local v3
    .end local v4
    :cond_7
    return-void
.end method
