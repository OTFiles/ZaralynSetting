.class Lcom/android/settings/SettingsPreferenceFragment$2;
.super Ljava/lang/Object;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsPreferenceFragment;

    .line 172
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$2;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    move-object v1, p0

    .line 176
    :try_start_0
    iget-object v0, v1, Lcom/android/settings/SettingsPreferenceFragment$2;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsPreferenceFragment;->access$000(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 177
    .local v0, "containerHeight":I
    iget-object v2, v1, Lcom/android/settings/SettingsPreferenceFragment$2;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settings/SettingsPreferenceFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    .line 178
    .local v2, "listView":Landroid/support/v7/widget/RecyclerView;
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SettingsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070191

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 179
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 180
    .local v3, "vglp":Landroid/view/ViewGroup$LayoutParams;
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dsl_full_screen_mode_switch_action"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 181
    .local v4, "iNowFullScreenMode":I
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gt v0, v5, :cond_0

    iget-object v5, v1, Lcom/android/settings/SettingsPreferenceFragment$2;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/SettingsPreferenceFragment;->access$100(Lcom/android/settings/SettingsPreferenceFragment;)I

    move-result v5

    if-eq v4, v5, :cond_1

    :cond_0
    instance-of v5, v2, Landroid/support/v7/widget/RecyclerView;

    if-eqz v5, :cond_1

    .line 182
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "==divhee==============containerHeight==="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v5, v1, Lcom/android/settings/SettingsPreferenceFragment$2;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-static {v5, v4}, Lcom/android/settings/SettingsPreferenceFragment;->access$102(Lcom/android/settings/SettingsPreferenceFragment;I)I

    .line 184
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 185
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v5, v1, Lcom/android/settings/SettingsPreferenceFragment$2;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/SettingsPreferenceFragment;->access$000(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/view/ViewGroup;

    move-result-object v5

    const v6, 0x7f0a01de

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 187
    .local v5, "tvPmms":Landroid/view/View;
    if-eqz v5, :cond_1

    .line 188
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 189
    .local v6, "vglp2":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 190
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    .end local v0
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 196
    :goto_0
    return-void
.end method
