.class public Lcom/android/settingslib/readboy/overscroll/VerticalOverScrollBounceEffectDecorator$AnimationAttributesVertical;
.super Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$AnimationAttributes;
.source "VerticalOverScrollBounceEffectDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/readboy/overscroll/VerticalOverScrollBounceEffectDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AnimationAttributesVertical"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$AnimationAttributes;-><init>()V

    .line 50
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iput-object v0, p0, Lcom/android/settingslib/readboy/overscroll/VerticalOverScrollBounceEffectDecorator$AnimationAttributesVertical;->mProperty:Landroid/util/Property;

    .line 51
    return-void
.end method


# virtual methods
.method protected init(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/settingslib/readboy/overscroll/VerticalOverScrollBounceEffectDecorator$AnimationAttributesVertical;->mAbsOffset:F

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settingslib/readboy/overscroll/VerticalOverScrollBounceEffectDecorator$AnimationAttributesVertical;->mMaxOffset:F

    .line 57
    return-void
.end method
