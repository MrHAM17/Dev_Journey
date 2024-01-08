package com.jusplaymoviestreamingapp.app.modules.selectsaved.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.databinding.RowSelectsavedBinding
import com.jusplaymoviestreamingapp.app.modules.selectsaved.`data`.model.SelectsavedRowModel
import kotlin.Int
import kotlin.collections.List

class SelectSavedAdapter(
  var list: List<SelectsavedRowModel>
) : RecyclerView.Adapter<SelectSavedAdapter.RowSelectsavedVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSelectsavedVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_selectsaved,parent,false)
    return RowSelectsavedVH(view)
  }

  override fun onBindViewHolder(holder: RowSelectsavedVH, position: Int) {
    val selectsavedRowModel = SelectsavedRowModel()
    // TODO uncomment following line after integration with data source
    // val selectsavedRowModel = list[position]
    holder.binding.selectsavedRowModel = selectsavedRowModel
  }

  override fun getItemCount(): Int = 9
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SelectsavedRowModel>) {
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
      item: SelectsavedRowModel
    ) {
    }
  }

  inner class RowSelectsavedVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSelectsavedBinding = RowSelectsavedBinding.bind(itemView)
    init {
      binding.btnWatchNow.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, SelectsavedRowModel())
      }
    }
  }
}
