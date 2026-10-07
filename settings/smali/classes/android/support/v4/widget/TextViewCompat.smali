.class public final Landroid/support/v4/widget/TextViewCompat;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/TextViewCompat$OreoCallback;
    }
.end annotation


# direct methods
.method public static getFirstBaselineToTopHeight(Landroid/widget/TextView;)I
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 768
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static getLastBaselineToBottomHeight(Landroid/widget/TextView;)I
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 778
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static getTextDirection(Landroid/text/TextDirectionHeuristic;)I
    .locals 2
    .param p0, "heuristic"    # Landroid/text/TextDirectionHeuristic;

    .line 963
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    .line 964
    return v1

    .line 965
    :cond_0
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v0, :cond_1

    .line 966
    return v1

    .line 967
    :cond_1
    sget-object v0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v0, :cond_2

    .line 968
    const/4 v0, 0x2

    return v0

    .line 969
    :cond_2
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v0, :cond_3

    .line 970
    const/4 v0, 0x3

    return v0

    .line 971
    :cond_3
    sget-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v0, :cond_4

    .line 972
    const/4 v0, 0x4

    return v0

    .line 973
    :cond_4
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v0, :cond_5

    .line 974
    const/4 v0, 0x5

    return v0

    .line 975
    :cond_5
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v0, :cond_6

    .line 976
    const/4 v0, 0x6

    return v0

    .line 977
    :cond_6
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v0, :cond_7

    .line 978
    const/4 v0, 0x7

    return v0

    .line 980
    :cond_7
    return v1
.end method

.method private static getTextDirectionHeuristic(Landroid/widget/TextView;)Landroid/text/TextDirectionHeuristic;
    .locals 5
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 907
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_0

    .line 909
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    return-object v0

    .line 912
    :cond_0
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastP()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 913
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 918
    nop

    .line 919
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    .line 920
    .local v0, "symbols":Landroid/icu/text/DecimalFormatSymbols;
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    .line 923
    .local v3, "zero":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 924
    .local v2, "firstCodepoint":I
    invoke-static {v2}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v4

    .line 925
    .local v4, "digitDirection":B
    if-eq v4, v1, :cond_2

    const/4 v1, 0x2

    if-ne v4, v1, :cond_1

    goto :goto_0

    .line 929
    :cond_1
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    return-object v1

    .line 927
    :cond_2
    :goto_0
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    return-object v1

    .line 935
    .end local v0
    .end local v2
    .end local v3
    .end local v4
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    move v0, v1

    .line 938
    .local v0, "defaultIsRtl":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 941
    if-eqz v0, :cond_5

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    .line 954
    :pswitch_0    # 0x7
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    return-object v1

    .line 952
    :pswitch_1    # 0x6
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    return-object v1

    .line 950
    :pswitch_2    # 0x5
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    return-object v1

    .line 948
    :pswitch_3    # 0x4
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    return-object v1

    .line 946
    :pswitch_4    # 0x3
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    return-object v1

    .line 944
    :pswitch_5    # 0x2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    return-object v1

    .line 941
    :cond_5
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    :goto_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5    # 0x2
        :pswitch_4    # 0x3
        :pswitch_3    # 0x4
        :pswitch_2    # 0x5
        :pswitch_1    # 0x6
        :pswitch_0    # 0x7
    .end packed-switch
.end method

.method public static getTextMetricsParams(Landroid/widget/TextView;)Landroid/support/v4/text/PrecomputedTextCompat$Params;
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 815
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    new-instance v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/text/PrecomputedTextCompat$Params;-><init>(Landroid/text/PrecomputedText$Params;)V

    return-object v0

    .line 818
    :cond_0
    new-instance v0, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;

    new-instance v1, Landroid/text/TextPaint;

    .line 819
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-direct {v0, v1}, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;-><init>(Landroid/text/TextPaint;)V

    .line 820
    .local v0, "builder":Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 821
    invoke-virtual {p0}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->setBreakStrategy(I)Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;

    .line 822
    invoke-virtual {p0}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->setHyphenationFrequency(I)Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;

    .line 824
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    .line 825
    invoke-static {p0}, Landroid/support/v4/widget/TextViewCompat;->getTextDirectionHeuristic(Landroid/widget/TextView;)Landroid/text/TextDirectionHeuristic;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;

    .line 827
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->build()Landroid/support/v4/text/PrecomputedTextCompat$Params;

    move-result-object v1

    return-object v1
.end method

.method public static setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V
    .locals 6
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "firstBaselineToTopHeight"    # I

    .line 693
    invoke-static {p1}, Landroid/support/v4/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 694
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    .line 696
    return-void

    .line 699
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 701
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 704
    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 707
    :cond_1
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    goto :goto_1

    .line 705
    :cond_2
    :goto_0
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 707
    .local v1, "fontMetricsTop":I
    :goto_1
    nop

    .line 713
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le p1, v2, :cond_3

    .line 714
    neg-int v2, v1

    sub-int v2, p1, v2

    .line 715
    .local v2, "paddingTop":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    .line 716
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    .line 715
    invoke-virtual {p0, v3, v2, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 718
    .end local v2
    :cond_3
    return-void
.end method

.method public static setLastBaselineToBottomHeight(Landroid/widget/TextView;I)V
    .locals 6
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "lastBaselineToBottomHeight"    # I

    .line 738
    invoke-static {p1}, Landroid/support/v4/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 740
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 742
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 745
    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 748
    :cond_0
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    goto :goto_1

    .line 746
    :cond_1
    :goto_0
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 748
    .local v1, "fontMetricsBottom":I
    :goto_1
    nop

    .line 754
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le p1, v2, :cond_2

    .line 755
    sub-int v2, p1, v1

    .line 756
    .local v2, "paddingBottom":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    .line 757
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    .line 756
    invoke-virtual {p0, v3, v4, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 759
    .end local v2
    :cond_2
    return-void
.end method

.method public static setLineHeight(Landroid/widget/TextView;I)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "lineHeight"    # I

    .line 796
    invoke-static {p1}, Landroid/support/v4/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 798
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    .line 800
    .local v0, "fontHeight":I
    if-eq p1, v0, :cond_0

    .line 802
    sub-int v1, p1, v0

    int-to-float v1, v1

    const/high16 v2, 0x3f800000

    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 804
    :cond_0
    return-void
.end method

.method public static setPrecomputedText(Landroid/widget/TextView;Landroid/support/v4/text/PrecomputedTextCompat;)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "precomputed"    # Landroid/support/v4/text/PrecomputedTextCompat;

    .line 884
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    invoke-virtual {p1}, Landroid/support/v4/text/PrecomputedTextCompat;->getPrecomputedText()Landroid/text/PrecomputedText;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 889
    :cond_0
    invoke-static {p0}, Landroid/support/v4/widget/TextViewCompat;->getTextMetricsParams(Landroid/widget/TextView;)Landroid/support/v4/text/PrecomputedTextCompat$Params;

    move-result-object v0

    .line 890
    .local v0, "param":Landroid/support/v4/text/PrecomputedTextCompat$Params;
    invoke-virtual {p1}, Landroid/support/v4/text/PrecomputedTextCompat;->getParams()Landroid/support/v4/text/PrecomputedTextCompat$Params;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/text/PrecomputedTextCompat$Params;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 893
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 895
    .end local v0
    :goto_0
    return-void

    .line 891
    .restart local v0
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Given text can not be applied to TextView."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setTextAppearance(Landroid/widget/TextView;I)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "resId"    # I

    .line 283
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 284
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 288
    :goto_0
    return-void
.end method

.method public static setTextMetricsParams(Landroid/widget/TextView;Landroid/support/v4/text/PrecomputedTextCompat$Params;)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "params"    # Landroid/support/v4/text/PrecomputedTextCompat$Params;

    .line 842
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 843
    invoke-virtual {p1}, Landroid/support/v4/text/PrecomputedTextCompat$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat;->getTextDirection(Landroid/text/TextDirectionHeuristic;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 846
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    .line 847
    invoke-virtual {p1}, Landroid/support/v4/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    .line 850
    .local v0, "paintTextScaleX":F
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 853
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextScaleX()F

    move-result v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 856
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 858
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 860
    .end local v0
    goto :goto_0

    .line 862
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 866
    invoke-virtual {p1}, Landroid/support/v4/text/PrecomputedTextCompat$Params;->getBreakStrategy()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBreakStrategy(I)V

    .line 867
    invoke-virtual {p1}, Landroid/support/v4/text/PrecomputedTextCompat$Params;->getHyphenationFrequency()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    .line 869
    :goto_0
    return-void
.end method

.method public static wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 519
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-gt v0, v1, :cond_1

    instance-of v0, p1, Landroid/support/v4/widget/TextViewCompat$OreoCallback;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 529
    :cond_0
    new-instance v0, Landroid/support/v4/widget/TextViewCompat$OreoCallback;

    invoke-direct {v0, p1, p0}, Landroid/support/v4/widget/TextViewCompat$OreoCallback;-><init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V

    return-object v0

    .line 523
    :cond_1
    :goto_0
    return-object p1
.end method
