# Simple-Grid-By-SKShapeNode
一個未來在ios game的開發中可能會用到的格線產生class

## 使用方法
1.  你需要用到SpriteKit frameWork 與 SimpleGrid.swift 檔案
    
2.  生成一個Grid Class實體  
    需要參數有：  
    center   //CGPoint,設定中央十字線的位置  
    border   //CGPoint,設定格線的最大邊界  
    columnGap   //CGFloat,設定每行隔線間距,可設為零  
    rowGap   //CGFloat,設定每列格線間距,可設為零  
    
3.  之後呼叫draw(lineWidth:_, strokeColor:_)-> SKShapeNode 方法  
    參數：  
    lineWidth //CGFloat,設定每條格線寬度  
    strokeColor //SKColor,設定格線顏色  
    
4.  run

