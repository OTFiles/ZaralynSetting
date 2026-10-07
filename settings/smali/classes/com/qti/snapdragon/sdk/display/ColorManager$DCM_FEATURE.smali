.class public final enum Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;
.super Ljava/lang/Enum;
.source "ColorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/snapdragon/sdk/display/ColorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DCM_FEATURE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

.field public static final enum FEATURE_ADAPTIVE_BACKLIGHT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

.field public static final enum FEATURE_COLOR_BALANCE:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

.field public static final enum FEATURE_COLOR_MODE_MANAGEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

.field public static final enum FEATURE_COLOR_MODE_SELECTION:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

.field public static final enum FEATURE_GLOBAL_PICTURE_ADJUSTMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

.field public static final enum FEATURE_MEMORY_COLOR_ADJUSTMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

.field public static final enum FEATURE_SUNLIGHT_VISBILITY_IMPROVEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 93
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    const-string v1, "FEATURE_COLOR_BALANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_BALANCE:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    .line 99
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    const-string v1, "FEATURE_COLOR_MODE_SELECTION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_SELECTION:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    .line 104
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    const-string v1, "FEATURE_COLOR_MODE_MANAGEMENT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_MANAGEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    .line 109
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    const-string v1, "FEATURE_ADAPTIVE_BACKLIGHT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_ADAPTIVE_BACKLIGHT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    .line 114
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    const-string v1, "FEATURE_GLOBAL_PICTURE_ADJUSTMENT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_GLOBAL_PICTURE_ADJUSTMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    .line 119
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    const-string v1, "FEATURE_MEMORY_COLOR_ADJUSTMENT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_MEMORY_COLOR_ADJUSTMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    .line 124
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    const-string v1, "FEATURE_SUNLIGHT_VISBILITY_IMPROVEMENT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_SUNLIGHT_VISBILITY_IMPROVEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    .line 89
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_BALANCE:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_SELECTION:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_MANAGEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_ADAPTIVE_BACKLIGHT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_GLOBAL_PICTURE_ADJUSTMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_MEMORY_COLOR_ADJUSTMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_SUNLIGHT_VISBILITY_IMPROVEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    aput-object v1, v0, v8

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->$VALUES:[Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 130
    iput p3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->value:I

    .line 131
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 89
    const-class v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    return-object v0
.end method

.method public static values()[Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;
    .locals 1

    .line 89
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->$VALUES:[Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {v0}, [Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    return-object v0
.end method


# virtual methods
.method protected getValue()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->value:I

    return v0
.end method
