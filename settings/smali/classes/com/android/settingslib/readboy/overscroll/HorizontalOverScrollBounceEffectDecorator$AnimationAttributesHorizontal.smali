.class public Lcom/android/settingslib/readboy/overscroll/HorizontalOverScrollBounceEffectDecorator$AnimationAttributesHorizontal;
.super Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$AnimationAttributes;
.source "HorizontalOverScrollBounceEffectDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/readboy/overscroll/HorizontalOverScrollBounceEffectDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AnimationAttributesHorizontal"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/android/settingslib/readboy/overscroll/OverScrollBounceEffectDecoratorBase$AnimationAttributes;-><init>()V

    .line 50
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    iput-object v0, p0, Lcom/android/settingslib/readboy/overscroll/HorizontalOverScrollBounceEffectDecorator$AnimationAttributesHorizontal;->mProperty:Landroid/util/Property;

    .line 51
    return-void
.end method


# virtual methods
.method protected init(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/android/settingslib/readboy/overscroll/HorizontalOverScrollBounceEffectDecorator$AnimationAttributesHorizontal;->mAbsOffset:F

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settingslib/readboy/overscroll/HorizontalOverScrollBounceEffectDecorator$AnimationAttributesHorizontal;->mMaxOffset:F

    .line 57
    return-void
.end method
