package com.vertexrealestateapp.app.modules.confirmrequestbottomsheet.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.databinding.RowConfirmrequestbottomsheetBinding
import com.vertexrealestateapp.app.modules.confirmrequestbottomsheet.`data`.model.ConfirmrequestbottomsheetRowModel
import kotlin.Int
import kotlin.collections.List

class ConfirmrequestBottomsheetAdapter(
  var list: List<ConfirmrequestbottomsheetRowModel>
) : RecyclerView.Adapter<ConfirmrequestBottomsheetAdapter.RowConfirmrequestbottomsheetVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int):
      RowConfirmrequestbottomsheetVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_confirmrequestbottomsheet,parent,false)
    return RowConfirmrequestbottomsheetVH(view)
  }

  override fun onBindViewHolder(holder: RowConfirmrequestbottomsheetVH, position: Int) {
    val confirmrequestbottomsheetRowModel = ConfirmrequestbottomsheetRowModel()
    // TODO uncomment following line after integration with data source
    // val confirmrequestbottomsheetRowModel = list[position]
    holder.binding.confirmrequestbottomsheetRowModel = confirmrequestbottomsheetRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ConfirmrequestbottomsheetRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: ConfirmrequestbottomsheetRowModel
    ) {
    }
  }

  inner class RowConfirmrequestbottomsheetVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowConfirmrequestbottomsheetBinding =
        RowConfirmrequestbottomsheetBinding.bind(itemView)
  }
}
