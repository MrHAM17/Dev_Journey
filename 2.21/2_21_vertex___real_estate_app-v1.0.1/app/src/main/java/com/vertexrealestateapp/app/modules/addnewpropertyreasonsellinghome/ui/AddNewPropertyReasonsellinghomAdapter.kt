package com.vertexrealestateapp.app.modules.addnewpropertyreasonsellinghome.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.databinding.RowAddnewpropertyreasonsellinghomBinding
import com.vertexrealestateapp.app.modules.addnewpropertyreasonsellinghome.`data`.model.AddnewpropertyreasonsellinghomRowModel
import kotlin.Int
import kotlin.collections.List

class AddNewPropertyReasonsellinghomAdapter(
  var list: List<AddnewpropertyreasonsellinghomRowModel>
) :
    RecyclerView.Adapter<AddNewPropertyReasonsellinghomAdapter.RowAddnewpropertyreasonsellinghomVH>()
    {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int):
      RowAddnewpropertyreasonsellinghomVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_addnewpropertyreasonsellinghom,parent,false)
    return RowAddnewpropertyreasonsellinghomVH(view)
  }

  override fun onBindViewHolder(holder: RowAddnewpropertyreasonsellinghomVH, position: Int) {
    val addnewpropertyreasonsellinghomRowModel = AddnewpropertyreasonsellinghomRowModel()
    // TODO uncomment following line after integration with data source
    // val addnewpropertyreasonsellinghomRowModel = list[position]
    holder.binding.addnewpropertyreasonsellinghomRowModel = addnewpropertyreasonsellinghomRowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<AddnewpropertyreasonsellinghomRowModel>) {
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
      item: AddnewpropertyreasonsellinghomRowModel
    ) {
    }
  }

  inner class RowAddnewpropertyreasonsellinghomVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowAddnewpropertyreasonsellinghomBinding =
        RowAddnewpropertyreasonsellinghomBinding.bind(itemView)
  }
}
