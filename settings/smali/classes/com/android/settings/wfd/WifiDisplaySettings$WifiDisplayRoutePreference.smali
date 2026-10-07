.class Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;
.super Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiDisplayRoutePreference"
.end annotation


# instance fields
.field private final mDisplay:Landroid/hardware/display/WifiDisplay;

.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p4, "display"    # Landroid/hardware/display/WifiDisplay;

    .line 705
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 706
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V

    .line 708
    iput-object p4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    .line 709
    const p1, 0x7f0d0239

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->setWidgetLayoutResource(I)V

    .line 710
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 714
    invoke-super {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 716
    const v0, 0x7f0a0139

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 717
    .local v0, "deviceDetails":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 719
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 720
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 721
    .local v1, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010033

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 723
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 724
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 727
    .end local v1
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 731
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1400(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 732
    return-void
.end method
