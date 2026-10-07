.class Lcom/android/settings/widget/SeekBarPreference$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "SeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SeekBarPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SeekBarPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/widget/SeekBarPreference;

    .line 129
    iput-object p1, p0, Lcom/android/settings/widget/SeekBarPreference$1;->this$0:Lcom/android/settings/widget/SeekBarPreference;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 132
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 134
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getRangeInfo()Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v0

    .line 135
    .local v0, "rangeInfo":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/settings/widget/SeekBarPreference$1;->this$0:Lcom/android/settings/widget/SeekBarPreference;

    .line 137
    invoke-static {v1}, Lcom/android/settings/widget/SeekBarPreference;->access$000(Lcom/android/settings/widget/SeekBarPreference;)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMin()F

    move-result v2

    .line 138
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMax()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getCurrent()F

    move-result v4

    .line 136
    invoke-static {v1, v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 140
    :cond_0
    return-void
.end method
