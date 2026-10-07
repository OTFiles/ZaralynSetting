.class public final enum Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;
.super Ljava/lang/Enum;
.source "ColorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/snapdragon/sdk/display/ColorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DCM_DISPLAY_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

.field public static final enum DISP_EXTERNAL:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

.field public static final enum DISP_PRIMARY:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

.field public static final enum DISP_WIFI:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 145
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    const-string v1, "DISP_PRIMARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->DISP_PRIMARY:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    .line 146
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    const-string v1, "DISP_EXTERNAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->DISP_EXTERNAL:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    .line 147
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    const-string v1, "DISP_WIFI"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->DISP_WIFI:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    .line 144
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->DISP_PRIMARY:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->DISP_EXTERNAL:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->DISP_WIFI:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->$VALUES:[Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

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

    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 153
    iput p3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->value:I

    .line 154
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 144
    const-class v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;
    .locals 1

    .line 144
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->$VALUES:[Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    invoke-virtual {v0}, [Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    return-object v0
.end method


# virtual methods
.method protected getValue()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->value:I

    return v0
.end method
