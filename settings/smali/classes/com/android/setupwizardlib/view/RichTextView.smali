.class public Lcom/android/setupwizardlib/view/RichTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "RichTextView.java"

# interfaces
.implements Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;


# instance fields
.field private mAccessibilityHelper:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

.field private mOnLinkClickListener:Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/RichTextView;->init()V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/RichTextView;->init()V

    .line 104
    return-void
.end method

.method public static getRichText(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 66
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_4

    .line 67
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 68
    .local v0, "spannable":Landroid/text/SpannableString;
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const-class v2, Landroid/text/Annotation;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Annotation;

    .line 69
    .local v1, "spans":[Landroid/text/Annotation;
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 70
    .local v4, "span":Landroid/text/Annotation;
    invoke-virtual {v4}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "key":Ljava/lang/String;
    const-string v6, "textAppearance"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 72
    invoke-virtual {v4}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, "textAppearance":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "style"

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 75
    .local v7, "style":I
    if-nez v7, :cond_0

    .line 76
    const-string v8, "RichTextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot find resource: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    new-instance v8, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v8, p0, v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 80
    .local v8, "textAppearanceSpan":Landroid/text/style/TextAppearanceSpan;
    invoke-static {v0, v4, v8}, Lcom/android/setupwizardlib/span/SpanHelper;->replaceSpan(Landroid/text/Spannable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .end local v6
    .end local v7
    .end local v8
    goto :goto_1

    :cond_1
    const-string v6, "link"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 82
    new-instance v6, Lcom/android/setupwizardlib/span/LinkSpan;

    invoke-virtual {v4}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/setupwizardlib/span/LinkSpan;-><init>(Ljava/lang/String;)V

    .line 83
    .local v6, "link":Lcom/android/setupwizardlib/span/LinkSpan;
    invoke-static {v0, v4, v6}, Lcom/android/setupwizardlib/span/SpanHelper;->replaceSpan(Landroid/text/Spannable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    .end local v4
    .end local v5
    .end local v6
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    :cond_3
    return-object v0

    .line 88
    .end local v0
    .end local v1
    :cond_4
    return-object p1
.end method

.method private hasLinks(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 148
    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 149
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    .line 150
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    .line 151
    .local v0, "spans":[Landroid/text/style/ClickableSpan;
    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 153
    .end local v0
    :cond_1
    return v1
.end method

.method private init()V
    .locals 1

    .line 107
    new-instance v0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    invoke-direct {v0, p0}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->mAccessibilityHelper:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    .line 108
    iget-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->mAccessibilityHelper:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 109
    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 177
    iget-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->mAccessibilityHelper:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->mAccessibilityHelper:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x1

    return v0

    .line 180
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 6

    .line 185
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatTextView;->drawableStateChanged()V

    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/RichTextView;->getDrawableState()[I

    move-result-object v0

    .line 191
    .local v0, "state":[I
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/RichTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 192
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 193
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 194
    invoke-virtual {p0, v4}, Lcom/android/setupwizardlib/view/RichTextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    .end local v4
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 199
    .end local v0
    :cond_1
    return-void
.end method

.method public getOnLinkClickListener()Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->mOnLinkClickListener:Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;

    return-object v0
.end method

.method public onLinkClick(Lcom/android/setupwizardlib/span/LinkSpan;)Z
    .locals 1
    .param p1, "span"    # Lcom/android/setupwizardlib/span/LinkSpan;

    .line 211
    iget-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->mOnLinkClickListener:Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->mOnLinkClickListener:Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;

    invoke-interface {v0, p1}, Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;->onLinkClick(Lcom/android/setupwizardlib/span/LinkSpan;)Z

    move-result v0

    return v0

    .line 214
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 163
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 164
    .local v0, "superResult":Z
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/RichTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v1

    .line 165
    .local v1, "movementMethod":Landroid/text/method/MovementMethod;
    instance-of v2, v1, Lcom/android/setupwizardlib/view/TouchableMovementMethod;

    if-eqz v2, :cond_0

    .line 166
    move-object v2, v1

    check-cast v2, Lcom/android/setupwizardlib/view/TouchableMovementMethod;

    .line 168
    .local v2, "touchableMovementMethod":Lcom/android/setupwizardlib/view/TouchableMovementMethod;
    invoke-interface {v2}, Lcom/android/setupwizardlib/view/TouchableMovementMethod;->getLastTouchEvent()Landroid/view/MotionEvent;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 169
    invoke-interface {v2}, Lcom/android/setupwizardlib/view/TouchableMovementMethod;->isLastTouchEventHandled()Z

    move-result v3

    return v3

    .line 172
    .end local v2
    :cond_0
    return v0
.end method

.method public setOnLinkClickListener(Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;

    .line 202
    iput-object p1, p0, Lcom/android/setupwizardlib/view/RichTextView;->mOnLinkClickListener:Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;

    .line 203
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .line 113
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/RichTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/setupwizardlib/view/RichTextView;->getRichText(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 116
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 117
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/view/RichTextView;->hasLinks(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 119
    .local v0, "hasLinks":Z
    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lcom/android/setupwizardlib/view/TouchableMovementMethod$TouchableLinkMovementMethod;->getInstance()Lcom/android/setupwizardlib/view/TouchableMovementMethod$TouchableLinkMovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/view/RichTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    .line 127
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/view/RichTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 133
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/RichTextView;->setFocusable(Z)V

    .line 137
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-lt v1, v2, :cond_1

    .line 138
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/view/RichTextView;->setRevealOnFocusHint(Z)V

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/RichTextView;->setFocusableInTouchMode(Z)V

    .line 145
    :cond_1
    return-void
.end method
