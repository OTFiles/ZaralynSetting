.class Lcom/android/settings/PadModeSettings$1;
.super Ljava/lang/Object;
.source "PadModeSettings.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PadModeSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PadModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/PadModeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/PadModeSettings;

    .line 178
    iput-object p1, p0, Lcom/android/settings/PadModeSettings$1;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 9

    .line 181
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$1;->this$0:Lcom/android/settings/PadModeSettings;

    iget-object v0, v0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PadModeSettings$1;->this$0:Lcom/android/settings/PadModeSettings;

    iget-object v1, v1, Lcom/android/settings/PadModeSettings;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$1;->this$0:Lcom/android/settings/PadModeSettings;

    iget-object v0, v0, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    const v1, 0x7f0a0367

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 183
    .local v0, "ll_root_continar":Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings/PadModeSettings$1;->this$0:Lcom/android/settings/PadModeSettings;

    iget-object v1, v1, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 185
    iget-object v1, p0, Lcom/android/settings/PadModeSettings$1;->this$0:Lcom/android/settings/PadModeSettings;

    iget-object v1, v1, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/PadModeSettings$1;->this$0:Lcom/android/settings/PadModeSettings;

    iget-object v1, v1, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/PadModeSettings$1;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v2}, Lcom/android/settings/PadModeSettings;->access$000(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/settings/PadModeSettings$1;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v1}, Lcom/android/settings/PadModeSettings;->access$100(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 187
    .local v1, "vglp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/settings/PadModeSettings$1;->this$0:Lcom/android/settings/PadModeSettings;

    iget-object v2, v2, Lcom/android/settings/PadModeSettings;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x3c

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 188
    iget-object v2, p0, Lcom/android/settings/PadModeSettings$1;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v2}, Lcom/android/settings/PadModeSettings;->access$100(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 191
    .local v2, "son_width":I
    mul-int/lit16 v3, v2, 0x175

    div-int/lit16 v3, v3, 0xe7

    .line 192
    .local v3, "son_height":I
    const/4 v4, 0x0

    .line 193
    .local v4, "vglp2":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/android/settings/PadModeSettings$1;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v5}, Lcom/android/settings/PadModeSettings;->access$000(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 194
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 195
    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 196
    iget-object v5, p0, Lcom/android/settings/PadModeSettings$1;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v5}, Lcom/android/settings/PadModeSettings;->access$000(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-object v5, p0, Lcom/android/settings/PadModeSettings$1;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v5}, Lcom/android/settings/PadModeSettings;->access$200(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 199
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 200
    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 201
    iget-object v5, p0, Lcom/android/settings/PadModeSettings$1;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v5}, Lcom/android/settings/PadModeSettings;->access$200(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v5, p0, Lcom/android/settings/PadModeSettings$1;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v5}, Lcom/android/settings/PadModeSettings;->access$300(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 204
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 205
    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 206
    iget-object v5, p0, Lcom/android/settings/PadModeSettings$1;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v5}, Lcom/android/settings/PadModeSettings;->access$300(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    int-to-float v5, v2

    const/high16 v6, 0x3f400000    # 0.75f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 210
    .local v5, "son_width2":I
    int-to-float v6, v3

    const v7, 0x3f333333    # 0.7f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 211
    .local v6, "son_offset2":I
    const/4 v7, 0x0

    .line 212
    .local v7, "rglp3":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/settings/PadModeSettings$1;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v8}, Lcom/android/settings/PadModeSettings;->access$400(Lcom/android/settings/PadModeSettings;)Lcom/android/settings/custom/CustomProgressBar;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/custom/CustomProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 213
    iput v5, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 214
    iput v6, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 215
    iget-object v8, p0, Lcom/android/settings/PadModeSettings$1;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v8}, Lcom/android/settings/PadModeSettings;->access$400(Lcom/android/settings/PadModeSettings;)Lcom/android/settings/custom/CustomProgressBar;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/settings/custom/CustomProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v8, p0, Lcom/android/settings/PadModeSettings$1;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v8}, Lcom/android/settings/PadModeSettings;->access$500(Lcom/android/settings/PadModeSettings;)Lcom/android/settings/custom/CustomProgressBar;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/custom/CustomProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 218
    iput v5, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 219
    iput v6, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 220
    iget-object v8, p0, Lcom/android/settings/PadModeSettings$1;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v8}, Lcom/android/settings/PadModeSettings;->access$500(Lcom/android/settings/PadModeSettings;)Lcom/android/settings/custom/CustomProgressBar;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/settings/custom/CustomProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    iget-object v8, p0, Lcom/android/settings/PadModeSettings$1;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v8}, Lcom/android/settings/PadModeSettings;->access$600(Lcom/android/settings/PadModeSettings;)Lcom/android/settings/custom/CustomProgressBar;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/custom/CustomProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 223
    iput v5, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 224
    iput v6, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 225
    iget-object v8, p0, Lcom/android/settings/PadModeSettings$1;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v8}, Lcom/android/settings/PadModeSettings;->access$600(Lcom/android/settings/PadModeSettings;)Lcom/android/settings/custom/CustomProgressBar;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/settings/custom/CustomProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    :cond_0
    return-void
.end method
