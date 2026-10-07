.class public Lcom/android/setupwizardlib/span/LinkSpan;
.super Landroid/text/style/ClickableSpan;
.source "LinkSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;,
        Lcom/android/setupwizardlib/span/LinkSpan$OnClickListener;
    }
.end annotation


# static fields
.field private static final TYPEFACE_MEDIUM:Landroid/graphics/Typeface;


# instance fields
.field private final mId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    const-string v0, "sans-serif-medium"

    .line 55
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/setupwizardlib/span/LinkSpan;->TYPEFACE_MEDIUM:Landroid/graphics/Typeface;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/setupwizardlib/span/LinkSpan;->mId:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private dispatchClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "handled":Z
    instance-of v1, p1, Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;

    if-eqz v1, :cond_0

    .line 110
    move-object v1, p1

    check-cast v1, Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;

    invoke-interface {v1, p0}, Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;->onLinkClick(Lcom/android/setupwizardlib/span/LinkSpan;)Z

    move-result v0

    .line 112
    :cond_0
    if-nez v0, :cond_1

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/setupwizardlib/span/LinkSpan;->getLegacyListenerFromContext(Landroid/content/Context;)Lcom/android/setupwizardlib/span/LinkSpan$OnClickListener;

    move-result-object v1

    .line 114
    .local v1, "listener":Lcom/android/setupwizardlib/span/LinkSpan$OnClickListener;
    if-eqz v1, :cond_1

    .line 115
    invoke-interface {v1, p0}, Lcom/android/setupwizardlib/span/LinkSpan$OnClickListener;->onClick(Lcom/android/setupwizardlib/span/LinkSpan;)V

    .line 116
    const/4 v0, 0x1

    .line 119
    .end local v1
    :cond_1
    return v0
.end method

.method private getLegacyListenerFromContext(Landroid/content/Context;)Lcom/android/setupwizardlib/span/LinkSpan$OnClickListener;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    :goto_0
    instance-of v0, p1, Lcom/android/setupwizardlib/span/LinkSpan$OnClickListener;

    if-eqz v0, :cond_0

    .line 130
    move-object v0, p1

    check-cast v0, Lcom/android/setupwizardlib/span/LinkSpan$OnClickListener;

    return-object v0

    .line 131
    :cond_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 135
    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    .line 137
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/setupwizardlib/span/LinkSpan;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 90
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/span/LinkSpan;->dispatchClick(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    goto :goto_0

    .line 96
    :cond_0
    const-string v0, "LinkSpan"

    const-string v1, "Dropping click event. No listener attached."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_1
    :goto_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 100
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 101
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_2

    .line 102
    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 105
    .end local v0
    :cond_2
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "drawState"    # Landroid/text/TextPaint;

    .line 144
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 146
    sget-object v0, Lcom/android/setupwizardlib/span/LinkSpan;->TYPEFACE_MEDIUM:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 147
    return-void
.end method
