.class public Lcom/android/settings/display/ConversationMessageView;
.super Landroid/widget/FrameLayout;
.source "ConversationMessageView.java"


# instance fields
.field private mContactIconView:Landroid/widget/TextView;

.field private final mIconBackgroundColor:I

.field private final mIconText:Ljava/lang/CharSequence;

.field private final mIconTextColor:I

.field private final mIncoming:Z

.field private mMessageBubble:Landroid/widget/LinearLayout;

.field private final mMessageText:Ljava/lang/CharSequence;

.field private mMessageTextAndInfoView:Landroid/view/ViewGroup;

.field private mMessageTextView:Landroid/widget/TextView;

.field private mStatusTextView:Landroid/widget/TextView;

.field private final mTimestampText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 68
    sget-object v0, Lcom/android/settings/R$styleable;->ConversationMessageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 71
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    .line 72
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageText:Ljava/lang/CharSequence;

    .line 73
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/display/ConversationMessageView;->mTimestampText:Ljava/lang/CharSequence;

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mIconText:Ljava/lang/CharSequence;

    .line 75
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/display/ConversationMessageView;->mIconTextColor:I

    .line 76
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/display/ConversationMessageView;->mIconBackgroundColor:I

    .line 78
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d006e

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d006d

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 81
    return-void
.end method

.method private static getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "color"    # I

    .line 255
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 256
    .local v0, "constantStateDrawable":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 258
    :cond_0
    move-object v1, p1

    .line 259
    .local v1, "retDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p2, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 260
    return-object v1
.end method

.method private static isLayoutRtl(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private updateTextAppearance()V
    .locals 4

    .line 241
    iget-boolean v0, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0600cc

    goto :goto_0

    .line 242
    :cond_0
    const v0, 0x7f0600cd

    .line 243
    .local v0, "messageColorResId":I
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v1, :cond_1

    const v1, 0x7f06016c

    goto :goto_1

    .line 244
    :cond_1
    const v1, 0x7f06016d

    .line 245
    .local v1, "timestampColorResId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 247
    .local v2, "messageColor":I
    iget-object v3, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    iget-object v3, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 249
    iget-object v3, p0, Lcom/android/settings/display/ConversationMessageView;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    return-void
.end method

.method private updateViewAppearance()V
    .locals 18

    .line 181
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/display/ConversationMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 183
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f070126

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 185
    .local v2, "arrowWidth":I
    const v3, 0x7f07012a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 187
    .local v3, "messageTextLeftRightPadding":I
    const v4, 0x7f07012b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 189
    .local v4, "textTopPadding":I
    const v5, 0x7f070129

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 194
    .local v5, "textBottomPadding":I
    iget-boolean v6, v0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v6, :cond_0

    .line 195
    add-int v6, v3, v2

    .line 196
    .local v6, "textLeftPadding":I
    move v7, v3

    .local v7, "textRightPadding":I
    goto :goto_0

    .line 198
    .end local v6
    .end local v7
    :cond_0
    move v6, v3

    .line 199
    .restart local v6
    add-int v7, v3, v2

    .line 203
    .restart local v7
    :goto_0
    iget-boolean v8, v0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v8, :cond_1

    const v8, 0x800013

    goto :goto_1

    .line 204
    :cond_1
    const v8, 0x800015

    .line 205
    .local v8, "gravity":I
    :goto_1
    const v9, 0x7f070128

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 207
    .local v9, "messageTopPadding":I
    const v10, 0x7f070127

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    .line 211
    .local v10, "metadataTopPadding":I
    iget-boolean v11, v0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v11, :cond_2

    const v11, 0x7f080277

    goto :goto_2

    .line 212
    :cond_2
    const v11, 0x7f080278

    .line 213
    .local v11, "bubbleDrawableResId":I
    :goto_2
    iget-boolean v12, v0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v12, :cond_3

    const v12, 0x7f0600c6

    goto :goto_3

    .line 214
    :cond_3
    const v12, 0x7f0600c7

    .line 215
    .local v12, "bubbleColorResId":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/display/ConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 217
    .local v13, "context":Landroid/content/Context;
    nop

    .line 218
    invoke-virtual {v13, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 219
    invoke-virtual {v13, v12}, Landroid/content/Context;->getColor(I)I

    move-result v15

    .line 217
    invoke-static {v13, v14, v15}, Lcom/android/settings/display/ConversationMessageView;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 220
    .local v14, "textBackgroundDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v15, v0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v15, v14}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 222
    invoke-static/range {p0 .. p0}, Lcom/android/settings/display/ConversationMessageView;->isLayoutRtl(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 224
    iget-object v15, v0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    move-object/from16 v16, v1

    add-int v1, v4, v10

    .end local v1
    .local v16, "res":Landroid/content/res/Resources;
    invoke-virtual {v15, v7, v1, v6, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_4

    .line 228
    .end local v16
    .restart local v1
    :cond_4
    move-object/from16 v16, v1

    .end local v1
    .restart local v16
    iget-object v1, v0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    add-int v15, v4, v10

    invoke-virtual {v1, v6, v15, v7, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 234
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingRight()I

    move-result v15

    move/from16 v17, v2

    const/4 v2, 0x0

    .end local v2
    .local v17, "arrowWidth":I
    invoke-virtual {v0, v1, v9, v15, v2}, Lcom/android/settings/display/ConversationMessageView;->setPadding(IIII)V

    .line 235
    iget-object v1, v0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 237
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/display/ConversationMessageView;->updateTextAppearance()V

    .line 238
    return-void
.end method

.method private updateViewContent()V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mStatusTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mTimestampText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mIconText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/display/ConversationMessageView;->mIconTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800ed

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 176
    .local v0, "iconBase":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/display/ConversationMessageView;->mIconBackgroundColor:I

    invoke-static {v2, v0, v3}, Lcom/android/settings/display/ConversationMessageView;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 178
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 85
    const v0, 0x7f0a026a

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    .line 86
    const v0, 0x7f0a026d

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    .line 87
    const v0, 0x7f0a026c

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f0a026b

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mStatusTextView:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f0a0106

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    .line 90
    invoke-direct {p0}, Lcom/android/settings/display/ConversationMessageView;->updateViewContent()V

    .line 91
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    move-object v0, p0

    .line 129
    invoke-static {v0}, Lcom/android/settings/display/ConversationMessageView;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    .line 131
    .local v1, "isRtl":Z
    iget-object v2, v0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    .line 132
    .local v2, "iconWidth":I
    iget-object v3, v0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    .line 133
    .local v3, "iconHeight":I
    invoke-virtual {v0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingTop()I

    move-result v4

    .line 134
    .local v4, "iconTop":I
    sub-int v5, p4, p2

    sub-int/2addr v5, v2

    invoke-virtual {v0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 135
    .local v5, "contentWidth":I
    iget-object v6, v0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    .line 136
    .local v6, "contentHeight":I
    move v7, v4

    .line 141
    .local v7, "contentTop":I
    iget-boolean v8, v0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v8, :cond_1

    .line 142
    if-eqz v1, :cond_0

    .line 143
    sub-int v8, p4, p2

    invoke-virtual {v0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v8, v2

    .line 144
    .local v8, "iconLeft":I
    sub-int v9, v8, v5

    .local v9, "contentLeft":I
    :goto_0
    goto :goto_1

    .line 146
    .end local v8
    .end local v9
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingLeft()I

    move-result v8

    .line 147
    .restart local v8
    add-int v9, v8, v2

    goto :goto_0

    .line 150
    .end local v8
    :cond_1
    if-eqz v1, :cond_2

    .line 151
    invoke-virtual {v0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingLeft()I

    move-result v8

    .line 152
    .restart local v8
    add-int v9, v8, v2

    goto :goto_0

    .line 154
    .end local v8
    :cond_2
    sub-int v8, p4, p2

    invoke-virtual {v0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v8, v2

    .line 155
    .restart local v8
    sub-int v9, v8, v5

    .line 159
    .restart local v9
    :goto_1
    iget-object v10, v0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    add-int v11, v8, v2

    add-int v12, v4, v3

    invoke-virtual {v10, v8, v4, v11, v12}, Landroid/widget/TextView;->layout(IIII)V

    .line 161
    iget-object v10, v0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    add-int v11, v9, v5

    add-int v12, v7, v6

    invoke-virtual {v10, v9, v7, v11, v12}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 163
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 95
    invoke-direct {p0}, Lcom/android/settings/display/ConversationMessageView;->updateViewAppearance()V

    .line 97
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 99
    .local v0, "horizontalSpace":I
    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 100
    .local v2, "unspecifiedMeasureSpec":I
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 102
    .local v1, "iconMeasureSpec":I
    iget-object v3, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 103
    iget-object v3, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    .line 104
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 103
    const/high16 v4, 0x40000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 106
    iget-object v3, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 108
    nop

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070126

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 114
    .local v3, "arrowWidth":I
    iget-object v4, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    sub-int/2addr v4, v3

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 116
    .local v4, "maxLeftoverSpace":I
    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 119
    .local v5, "messageContentWidthMeasureSpec":I
    iget-object v6, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5, v2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 121
    iget-object v6, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    .line 122
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v7

    .line 121
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 123
    .local v6, "maxHeight":I
    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {p0}, Lcom/android/settings/display/ConversationMessageView;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0, v0, v7}, Lcom/android/settings/display/ConversationMessageView;->setMeasuredDimension(II)V

    .line 124
    return-void
.end method
