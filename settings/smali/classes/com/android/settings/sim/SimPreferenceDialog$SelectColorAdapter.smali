.class Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SimPreferenceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimPreferenceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectColorAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResId:I

.field final synthetic this$0:Lcom/android/settings/sim/SimPreferenceDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/sim/SimPreferenceDialog;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "arr"    # [Ljava/lang/String;

    .line 197
    iput-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    .line 198
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 199
    iput-object p2, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->mContext:Landroid/content/Context;

    .line 200
    iput p3, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->mResId:I

    .line 201
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 241
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 242
    .local v0, "rowView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;

    .line 244
    .local v1, "holder":Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;
    iget-object v2, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-static {v2}, Lcom/android/settings/sim/SimPreferenceDialog;->access$000(Lcom/android/settings/sim/SimPreferenceDialog;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 245
    iget-object v2, v1, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 247
    :cond_0
    iget-object v2, v1, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 249
    :goto_0
    iget-object v2, v1, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 205
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 206
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 210
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 211
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0700a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 212
    .local v2, "iconSize":I
    const v3, 0x7f0700aa

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 214
    .local v3, "strokeWidth":I
    if-nez p2, :cond_0

    .line 216
    iget v4, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->mResId:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 217
    .local v4, "rowView":Landroid/view/View;
    new-instance v6, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;

    invoke-direct {v6, p0, v5}, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;-><init>(Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;Lcom/android/settings/sim/SimPreferenceDialog$1;)V

    move-object v5, v6

    .line 218
    .local v5, "holder":Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;
    new-instance v6, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v7, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v7}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 219
    .local v6, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v6, v2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 220
    invoke-virtual {v6, v2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 221
    invoke-virtual {v6}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    int-to-float v8, v3

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 222
    const v7, 0x7f0a00f0

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v5, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->label:Landroid/widget/TextView;

    .line 223
    const v7, 0x7f0a00ed

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v5, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 224
    iput-object v6, v5, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    .line 225
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 226
    .end local v6
    goto :goto_0

    .line 227
    .end local v4
    .end local v5
    :cond_0
    move-object v4, p2

    .line 228
    .restart local v4
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;

    .line 231
    .restart local v5
    :goto_0
    iget-object v6, v5, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v6, v5, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-static {v7}, Lcom/android/settings/sim/SimPreferenceDialog;->access$300(Lcom/android/settings/sim/SimPreferenceDialog;)[I

    move-result-object v7

    aget v7, v7, p1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    iget-object v6, v5, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 234
    iget-object v6, v5, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-object v6, v5, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v7, v5, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    return-object v4
.end method
