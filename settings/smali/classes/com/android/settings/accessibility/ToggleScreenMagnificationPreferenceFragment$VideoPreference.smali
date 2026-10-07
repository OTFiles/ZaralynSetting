.class public Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;
.super Landroid/support/v7/preference/Preference;
.source "ToggleScreenMagnificationPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VideoPreference"
.end annotation


# instance fields
.field private mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mVideoBackgroundView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;
    .param p2, "context"    # Landroid/content/Context;

    .line 50
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    .line 51
    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    .line 46
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->mVideoBackgroundView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 17
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    move-object/from16 v7, p0

    .line 56
    move-object/from16 v8, p1

    invoke-super/range {p0 .. p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 57
    iget-object v0, v7, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$000(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 58
    .local v9, "res":Landroid/content/res/Resources;
    const v0, 0x7f07017a

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 60
    .local v10, "backgroundAssetWidth":I
    nop

    .line 61
    const v0, 0x7f07017d

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 62
    .local v11, "videoAssetWidth":I
    nop

    .line 63
    const v0, 0x7f07017b

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 64
    .local v12, "videoAssetHeight":I
    const v0, 0x7f07017c

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 66
    .local v13, "videoAssetMarginTop":I
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 67
    invoke-virtual {v8, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 68
    const v1, 0x7f0a04d4

    invoke-virtual {v8, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v7, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->mVideoBackgroundView:Landroid/widget/ImageView;

    .line 69
    const v1, 0x7f0a04d3

    invoke-virtual {v8, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/VideoView;

    .line 72
    .local v14, "videoView":Landroid/widget/VideoView;
    new-instance v1, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$1;

    invoke-direct {v1, v7}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$1;-><init>(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;)V

    invoke-virtual {v14, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 80
    invoke-virtual {v14, v0}, Landroid/widget/VideoView;->setAudioFocusRequest(I)V

    .line 83
    iget-object v1, v7, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v15

    .line 84
    .local v15, "args":Landroid/os/Bundle;
    if-eqz v15, :cond_0

    const-string v1, "video_resource"

    invoke-virtual {v15, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const-string v1, "%s://%s/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "android.resource"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget-object v3, v7, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    .line 88
    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "video_resource"

    .line 89
    invoke-virtual {v15, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 86
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 93
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 96
    new-instance v6, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$2;

    move-object v0, v6

    move-object v1, v7

    move-object v2, v14

    move v3, v11

    move v4, v10

    move v5, v12

    move-object v8, v6

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$2;-><init>(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;Landroid/widget/VideoView;IIII)V

    iput-object v8, v7, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 112
    iget-object v0, v7, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->mVideoBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, v7, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 113
    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->mVideoBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 119
    return-void
.end method
