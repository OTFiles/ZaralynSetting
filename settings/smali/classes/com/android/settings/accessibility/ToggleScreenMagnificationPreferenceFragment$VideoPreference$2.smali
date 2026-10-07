.class Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$2;
.super Ljava/lang/Object;
.source "ToggleScreenMagnificationPreferenceFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

.field final synthetic val$backgroundAssetWidth:I

.field final synthetic val$videoAssetHeight:I

.field final synthetic val$videoAssetMarginTop:I

.field final synthetic val$videoAssetWidth:I

.field final synthetic val$videoView:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;Landroid/widget/VideoView;IIII)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    .line 96
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$2;->this$1:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    iput-object p2, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$2;->val$videoView:Landroid/widget/VideoView;

    iput p3, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$2;->val$videoAssetWidth:I

    iput p4, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$2;->val$backgroundAssetWidth:I

    iput p5, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$2;->val$videoAssetHeight:I

    iput p6, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$2;->val$videoAssetMarginTop:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$2;->this$1:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    invoke-static {v0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->access$200(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 101
    .local v0, "backgroundViewWidth":I
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$2;->val$videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 102
    .local v1, "videoLp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$2;->val$videoAssetWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$2;->val$backgroundAssetWidth:I

    div-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 103
    iget v2, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$2;->val$videoAssetHeight:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$2;->val$backgroundAssetWidth:I

    div-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 104
    iget v2, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$2;->val$videoAssetMarginTop:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$2;->val$backgroundAssetWidth:I

    div-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 106
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$2;->val$videoView:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$2;->val$videoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->invalidate()V

    .line 108
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$2;->val$videoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 109
    return-void
.end method
